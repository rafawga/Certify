// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/index.dart';

// CUSTOM CRIADA POR ELDER MARX
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:typed_data';
import 'dart:html' as html;

Future<void> generatePDFWithFont(
  String textoEditavel,
  String googlefontURL,
) async {
  try {
    // Download the font file
    final response = await http.get(Uri.parse(googlefontURL));
    if (response.statusCode != 200) {
      throw Exception('Failed to download font file');
    }

    // Create a PDF document
    final pdf = pw.Document();

    // Create a font from the downloaded data
    final font = pw.Font.ttf(response.bodyBytes.buffer.asByteData());

    // Add a page to the PDF
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Text(
              textoEditavel,
              style: pw.TextStyle(
                font: font,
                fontSize: 20,
              ),
            ),
          );
        },
      ),
    );

    // Convert PDF to bytes
    final bytes = await pdf.save();

    // Create blob
    final blob = html.Blob([bytes], 'application/pdf');

    // Create URL
    final url = html.Url.createObjectUrlFromBlob(blob);

    // Open PDF in new tab
    html.window.open(url, '_blank');

    // Clean up
    html.Url.revokeObjectUrl(url);
  } catch (e) {
    print('Error generating PDF: $e');
    throw Exception('Failed to generate PDF: $e');
  }
}
