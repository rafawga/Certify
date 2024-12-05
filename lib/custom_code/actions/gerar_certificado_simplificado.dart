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

// Importações necessárias
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:http/http.dart' as http;

// Função principal
Future<String> gerarCertificadoSimplificado(String svgUrl) async {
  final pdf = pw.Document();

  if (svgUrl.isEmpty) {
    return "A URL do SVG está vazia ou é nula. Não é possível gerar o PDF.";
  }

  try {
    // Carrega o conteúdo do SVG
    final response = await http.get(Uri.parse(svgUrl));
    if (response.statusCode != 200) {
      return "Falha ao carregar o SVG da URL. Código de status: ${response.statusCode}.";
    }

    String svgContent = response.body;

    // Não realizamos nenhuma modificação no SVG

    // Renderiza o SVG diretamente no PDF

    // Define um formato de página padrão (A4)
    final pageFormat = PdfPageFormat.a4;

    // **Construção da página do PDF**
    pdf.addPage(
      pw.Page(
        pageFormat: pageFormat,
        build: (pw.Context context) {
          return pw.Center(
            child: pw.SvgImage(
              svg: svgContent,
              width: pageFormat.width,
              height: pageFormat.height,
              fit: pw.BoxFit.contain,
            ),
          );
        },
      ),
    );

    final pdfSaved = await pdf.save();

    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdfSaved,
    );

    return "PDF gerado com sucesso!";
  } catch (e) {
    return "Erro ao gerar o PDF: $e";
  }
}
