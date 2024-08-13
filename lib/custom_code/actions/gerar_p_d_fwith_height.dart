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

Future<void> gerarPDFwithHeight(
  double? width,
  double? height,
  String? imagePath,
  String? aluno,
  String? alunoColor,
  String? alunoSize,
) async {
  final pdf = pw.Document();

  if (width == null || height == null || imagePath == null) {
    print("Width, height, or image path is null. Cannot generate PDF.");
    return;
  }

  // Carrega a imagem de fundo a partir do imagePath fornecido
  final netImage = await networkImage(imagePath);

  // Converte as dimensões de entrada de pixels para pontos (a unidade de medida do PDF)
  final pageWidth = width * PdfPageFormat.point;
  final pageHeight = height * PdfPageFormat.point;

  // Define o formato da página com base nas dimensões fornecidas
  final pageFormat = PdfPageFormat(pageWidth, pageHeight, marginAll: 0);

  pdf.addPage(
    pw.Page(
      pageFormat: pageFormat,
      build: (pw.Context context) {
        return pw.FullPage(
          ignoreMargins: true,
          child: pw.Image(netImage,
              fit: pw.BoxFit.fill), // Ajusta a imagem para preencher a página
        );
      },
    ),
  );

  final pdfSaved = await pdf.save();

  // Salva o PDF ou envia para impressão
  await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => pdfSaved);
}
