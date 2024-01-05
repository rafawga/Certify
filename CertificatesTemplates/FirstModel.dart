// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:flutter/services.dart' show rootBundle;

// ... [Demais imports e código anterior permanecem inalterados]

Future gerarPDF(
  String? nomeCertificado,
  String? cargaHoraria,
  String? curso,
  String? hash, // O novo parâmetro hash
  DateTime? date, // Adicionando o novo parâmetro date
) async {
  final pdf = pw.Document();

  // Define a cor roxa para o nome do curso
  final PdfColor corRoxa = PdfColor.fromInt(0xff8e44ad);

  pdf.addPage(pw.Page(
    pageFormat: PdfPageFormat.a4.landscape,
    build: (pw.Context context) {
      return pw.Column(
        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        crossAxisAlignment: pw.CrossAxisAlignment.center,
        children: [
          pw.Padding(
            padding: const pw.EdgeInsets.only(top: 20),
            child: pw.Text(
              'CERTIFICADO DE CONCLUSÃO',
              style: pw.TextStyle(
                  fontSize: 30, // Tamanho maior para o título
                  fontWeight: pw.FontWeight.bold),
            ),
          ),
          pw.Expanded(
            child: pw.Container(
              width: double.infinity, // Usa toda a largura disponível
              alignment: pw.Alignment.center,
              child: pw.RichText(
                text: pw.TextSpan(
                  style: pw.TextStyle(
                    fontSize: 18,
                    color: PdfColors.black,
                  ),
                  children: [
                    pw.TextSpan(
                      text: 'Certificamos que ',
                    ),
                    pw.TextSpan(
                      text: nomeCertificado,
                      style: pw.TextStyle(
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.TextSpan(
                      text: ' completou com excelência a certificação ',
                    ),
                    pw.TextSpan(
                      text: curso,
                      style: pw.TextStyle(
                        color: corRoxa,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.TextSpan(
                      text:
                          ' com uma carga horária total de $cargaHoraria horas.',
                    ),
                  ],
                ),
                textAlign: pw.TextAlign.center,
              ),
            ),
          ),
          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
            children: [
              pw.Text(
                'Key de Segurança: $hash', // Alterado para "Key de Segurança"
                style: pw.TextStyle(
                    fontSize: 10,
                    fontWeight:
                        pw.FontWeight.bold), // Diminuição do tamanho da fonte
              ),
              pw.Text(
                'Data: ${date?.day}/${date?.month}/${date?.year}', // Exibindo a data a partir do input date
                style:
                    pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold),
              ),
            ],
          ),
          pw.SizedBox(height: 20), // Espaço no fundo da página
        ],
      );
    },
  ));

  final pdfSaved = await pdf.save();

  await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => pdfSaved);
}
