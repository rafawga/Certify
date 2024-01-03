import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:flutter/services.dart' show rootBundle;

Future gerarPDF(
  String? nomeCertificado,
  String? cargaHoraria,
  String? curso,
) async {
  final pdf = pw.Document();
  final hoje = DateTime.now();

  // Define a cor roxa para o nome do curso
  final PdfColor corRoxa = PdfColor.fromInt(0xff8e44ad);

  pdf.addPage(pw.Page(
    pageFormat: PdfPageFormat.a4.landscape,
    build: (pw.Context context) {
      return pw.Container(
        decoration: pw.BoxDecoration(
          border:
              pw.Border.all(color: PdfColors.grey, width: 1), // Bordas em cinza
        ),
        child: pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.center,
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          children: [
            pw.Divider(color: corRoxa, thickness: 2), // Linha decorativa roxa
            pw.Text('CERTIFICADO DE CONCLUSÃO',
                style:
                    pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold)),
            pw.Divider(color: corRoxa, thickness: 2), // Linha decorativa roxa
            pw.SizedBox(height: 20),
            pw.Text(
              'Certificamos que',
              style: pw.TextStyle(fontSize: 18),
              textAlign: pw.TextAlign.center,
            ),
            pw.Text(
              nomeCertificado!,
              style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
              textAlign: pw.TextAlign.center,
            ),
            pw.SizedBox(height: 10),
            pw.Text(
              'completou com excelência a certificação',
              style: pw.TextStyle(fontSize: 18),
              textAlign: pw.TextAlign.center,
            ),
            pw.Text(
              curso!,
              style: pw.TextStyle(
                  fontSize: 18, fontWeight: pw.FontWeight.bold, color: corRoxa),
              textAlign: pw.TextAlign.center,
            ),
            pw.SizedBox(height: 10),
            pw.Text(
              'promovido por EasyCertificates no dia ${hoje.day}/${hoje.month}/${hoje.year}',
              style: pw.TextStyle(fontSize: 18),
              textAlign: pw.TextAlign.center,
            ),
            pw.Text(
              'com uma carga horária total de $cargaHoraria horas.',
              style: pw.TextStyle(fontSize: 18),
              textAlign: pw.TextAlign.center,
            ),
            pw.SizedBox(height: 20),
          ],
        ),
      );
    },
  ));

  final pdfSaved = await pdf.save();

  await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => pdfSaved);
}
