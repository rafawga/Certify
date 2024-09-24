// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
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
import 'package:http/http.dart' as http; // Para fazer download do SVG
import 'package:xml/xml.dart'
    as xml; // Para manipulação de XML e extração de dimensões do SVG

Future<String> gerarPDFwithSVG(String svgUrl) async {
  final pdf = pw.Document();

  // Verifica se a URL do SVG é válida
  if (svgUrl == null || svgUrl.isEmpty) {
    return "A URL do SVG está vazia ou é nula. Não é possível gerar o PDF.";
  }

  try {
    // Faz o download do SVG a partir da URL fornecida
    final response = await http.get(Uri.parse(svgUrl));
    if (response.statusCode != 200) {
      return "Falha ao carregar o SVG da URL. Código de status: ${response.statusCode}.";
    }

    String svgContent = response.body; // Pega o conteúdo do SVG como string

    // Substitui 'CERTIFICADO' por 'teste' no conteúdo do SVG
    svgContent = svgContent.replaceAll('CERTIFICADO', 'teste');

    // Substitui 'aluno' por 'lucas fortunato' no conteúdo do SVG
    svgContent = svgContent.replaceAll('aluno', 'lucas fortunato');

    // Substitui todas as ocorrências da cor 'CCCCCC' por '#0f1496'
    // Considera diferentes formas da cor (maiúsculas/minúsculas, com ou sem '#')
    final colorPatterns = ['#CCCCCC', '#cccccc', 'CCCCCC', 'cccccc'];
    for (final pattern in colorPatterns) {
      svgContent = svgContent.replaceAll(pattern, '#0f1496');
    }

    // Parseia o SVG modificado para obter as dimensões (width e height)
    final svgXml = xml.XmlDocument.parse(svgContent);
    final svgElement = svgXml.findAllElements('svg').first;

    // Obtém as dimensões do SVG
    double width =
        double.tryParse(svgElement.getAttribute('width') ?? '0') ?? 0;
    double height =
        double.tryParse(svgElement.getAttribute('height') ?? '0') ?? 0;

    // Se não conseguir as dimensões diretamente, tenta usar o viewBox como fallback
    if (width == 0 || height == 0) {
      final viewBox =
          svgElement.getAttribute('viewBox')?.split(RegExp(r'[ ,]+'));
      if (viewBox != null && viewBox.length == 4) {
        width = double.tryParse(viewBox[2]) ?? 0;
        height = double.tryParse(viewBox[3]) ?? 0;
      }
    }

    // Verifica se as dimensões são válidas
    if (width == 0 || height == 0) {
      return "Não foi possível determinar as dimensões do SVG.";
    }

    // Define o formato da página com base nas dimensões do SVG
    final pageFormat = PdfPageFormat(
      width * PdfPageFormat.point,
      height * PdfPageFormat.point,
    );

    // Adiciona uma página ao PDF com o SVG renderizado no tamanho original
    pdf.addPage(
      pw.Page(
        pageFormat: pageFormat,
        build: (pw.Context context) {
          return pw.Center(
            child: pw.SvgImage(
              svg: svgContent, // Renderiza o SVG modificado dentro do PDF
            ),
          );
        },
      ),
    );

    final pdfSaved = await pdf.save();

    // Exibe o PDF gerado no dispositivo ou envia para impressão
    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdfSaved,
    );

    return "PDF gerado com sucesso!";
  } catch (e) {
    // Retorna o erro ocorrido como string
    return "Erro ao gerar o PDF: $e";
  }
}
