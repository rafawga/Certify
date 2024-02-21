// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:image/image.dart' as img;

Future gerarPDFCopy() async {
  final pdf = pw.Document();

  // Carrega a imagem
  final imageBytes = (await rootBundle.load('assets/images/certificate1.png'))
      .buffer
      .asUint8List();
  final image = pw.MemoryImage(imageBytes);

  // Decodifica a imagem para obter as dimensões
  final decodedImage = img.decodeImage(imageBytes);
  if (decodedImage == null) {
    print("Não foi possível decodificar a imagem.");
    return;
  }
  final imageWidth = decodedImage.width;
  final imageHeight = decodedImage.height;

  // Define o formato da página com base nas dimensões da imagem
  final pageFormat = PdfPageFormat(
      imageWidth * PdfPageFormat.point, imageHeight * PdfPageFormat.point);

  // Define as cores
  final PdfColor mainTextColor = PdfColor.fromInt(0x00214d);
  final PdfColor nameTextColor = PdfColor.fromInt(0xa27430);

  pdf.addPage(
    pw.Page(
      pageFormat: pageFormat,
      build: (pw.Context context) {
        return pw.Stack(
          children: [
            pw.Positioned.fill(
              child: pw.Image(image,
                  fit: pw.BoxFit.cover), // Exibe a imagem de fundo
            ),
            pw.Center(
              // Centraliza o texto
              child: pw.Container(
                width: imageWidth *
                    PdfPageFormat.point *
                    0.8, // Define a largura máxima do texto
                child: pw.Column(
                  mainAxisAlignment:
                      pw.MainAxisAlignment.center, // Centraliza verticalmente
                  children: [
                    pw.Text(
                      'Certificamos que, para os fins devidos', // Texto inicial alterado
                      style: pw.TextStyle(
                        font: pw.Font.times(),
                        fontSize: 48,
                        color: mainTextColor, // Cor principal do texto
                      ),
                      textAlign: pw.TextAlign.center,
                    ),
                    pw.SizedBox(height: 10), // Espaço entre linhas
                    pw.Text(
                      'RAFAEL GUTIERREZ IVANKIO',
                      style: pw.TextStyle(
                        font: pw.Font.timesBold(), // Times Bold para dar ênfase
                        fontSize: 90,
                        color: nameTextColor, // Cor do nome
                      ),
                      textAlign: pw.TextAlign.center,
                    ),
                    pw.Text(
                      'concluiu o curso "Python para iniciantes" ministrado pelo profissional Fernanda Ivankio na data de 21/07/2023 com uma duração de 40 horas.',
                      style: pw.TextStyle(
                        font: pw.Font.times(),
                        fontSize: 48,
                        color: mainTextColor, // Cor principal do texto
                      ),
                      textAlign: pw.TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    ),
  );

  final pdfSaved = await pdf.save();

  // Salva o PDF ou envia para impressão
  await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => pdfSaved);
}
