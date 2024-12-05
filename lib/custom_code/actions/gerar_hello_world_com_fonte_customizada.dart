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
import 'package:flutter/services.dart' show rootBundle;

// Função para carregar a fonte dos assets locais
Future<pw.Font> loadCustomFont() async {
  try {
    print(
        'Tentando carregar a fonte em assets/fonts/DancingScript-Regular.ttf');
    // Carrega os bytes da fonte a partir dos assets
    final fontData =
        await rootBundle.load('assets/fonts/DancingScript-Regular.ttf');
    print('Fonte carregada com sucesso.');
    // Converte os bytes em um objeto pw.Font
    return pw.Font.ttf(fontData.buffer.asByteData());
  } catch (e) {
    print('Erro ao carregar a fonte: $e');
    throw Exception('Falha ao carregar a fonte personalizada: $e');
  }
}

// Função principal para gerar o PDF
Future<String> gerarHelloWorldComFonteCustomizada() async {
  final pdf = pw.Document();

  try {
    print('Iniciando a geração do PDF.');
    // Carrega a fonte personalizada
    final pw.Font customFont = await loadCustomFont();

    // Define o formato da página com margens
    final pageFormat = PdfPageFormat.a4.applyMargin(
      left: 20,
      top: 20,
      right: 20,
      bottom: 20,
    );
    print('Formato da página definido.');

    // Adiciona uma página ao PDF
    pdf.addPage(
      pw.Page(
        pageFormat: pageFormat,
        build: (pw.Context context) {
          print('Construindo a página do PDF.');
          return pw.Center(
            child: pw.Text(
              'Hello, World!',
              style: pw.TextStyle(
                font: customFont,
                fontSize: 40,
              ),
            ),
          );
        },
      ),
    );
    print('Página adicionada ao PDF.');

    // Salva o PDF em bytes
    final pdfBytes = await pdf.save();
    print('PDF salvo em bytes.');

    // Exibe o PDF gerado
    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdfBytes,
    );
    print('PDF exibido com sucesso.');

    return "PDF gerado com sucesso!";
  } catch (e) {
    print('Erro ao gerar o PDF: $e');
    return "Erro ao gerar o PDF: $e";
  }
}
