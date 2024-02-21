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

Future gerarPDFCopy2(
  String aluno,
  String curso,
  String professor,
  DateTime data,
  String duracao,
  String key,
) async {
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

  // Formata a data
  final dataFormatada =
      "${data.day.toString().padLeft(2, '0')}/${data.month.toString().padLeft(2, '0')}/${data.year}";

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
              child: pw.Padding(
                padding: pw.EdgeInsets.symmetric(
                    horizontal: imageWidth *
                        PdfPageFormat.point *
                        0.1), // Ajusta o padding horizontal
                child: pw.Column(
                  mainAxisAlignment:
                      pw.MainAxisAlignment.center, // Centraliza verticalmente
                  children: [
                    pw.Text(
                      'Certificamos que, para os devidos fins',
                      style: pw.TextStyle(
                        font: pw.Font.times(),
                        fontSize: 48,
                        color: mainTextColor,
                      ),
                      textAlign: pw.TextAlign.center,
                    ),
                    pw.SizedBox(height: 10),
                    pw.Text(
                      aluno.toUpperCase(), // Aluno
                      style: pw.TextStyle(
                        font: pw.Font.timesBold(),
                        fontSize: 90,
                        color: nameTextColor,
                      ),
                      textAlign: pw.TextAlign.center,
                    ),
                    pw.Text(
                      'concluiu o curso "$curso" ministrado pelo profissional $professor na data de $dataFormatada com uma duração de $duracao horas.', // Curso, professor, data, duração
                      style: pw.TextStyle(
                        font: pw.Font.times(),
                        fontSize: 48,
                        color: mainTextColor,
                      ),
                      textAlign: pw.TextAlign.center,
                    ),
                    pw.Padding(
                        padding: pw.EdgeInsets.only(
                            top: imageHeight *
                                0.05)), // Ajusta o espaço antes dos textos adicionais
                    pw.Text(
                      'Código do Certificado: $key', // Chave
                      style: pw.TextStyle(
                        font: pw.Font.times(),
                        fontSize: 36,
                        color: mainTextColor,
                      ),
                      textAlign: pw.TextAlign.center,
                    ),
                    pw.Text(
                      'Powered by iDokey',
                      style: pw.TextStyle(
                        font: pw.Font.times(),
                        fontSize: 36,
                        color: mainTextColor,
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
