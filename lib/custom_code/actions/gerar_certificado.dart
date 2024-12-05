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
import 'package:xml/xml.dart' as xml;

Future<String> gerarCertificado(
    String svgUrl,
    String cor,
    String aluno,
    bool isCurso,
    String teacher,
    String date,
    String duration,
    String curso,
    String code,
    bool hasLogo, // Variável para verificar se a logo deve ser incluída
    String? logoUrl, // URL da logo
    String mainText, // Texto principal com templates
    String authenticationCode, // Código de autenticação
    bool hasProfissional, // Booleano para se deve incluir o profissional
    bool hasDate,
    bool hasDuration,
    // Novos parâmetros de cor
    String alunoColor,
    String mainTextColor,
    String codeColor,
    // URLs de fontes
    String fontAlunoURL,
    String fontMainTextURL,
    String fontCodeURL,
    // Alinhamentos
    String
        alunoAlignment, // Alinhamento do texto do aluno (left, right, center, justify)
    String
        mainTextAlignment // Alinhamento do texto principal (left, right, center, justify)
    ) async {
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

    // Substitui códigos de cor no SVG
    final colorPatterns = ['#CCCCCC', '#cccccc', 'CCCCCC', 'cccccc'];
    for (final pattern in colorPatterns) {
      svgContent = svgContent.replaceAll(pattern, cor);
    }

    // Determina 'type'
    String type = isCurso ? 'curso' : 'treinamento';

    // Mapa de variáveis
    Map<String, String> variables = {
      'aluno': aluno.trim(),
      'c-type': type.trim(),
      'teacher': teacher.trim(),
      'date': date.trim(),
      'duration': duration.trim(),
      'c-name': curso.trim(),
      'code': code.trim(),
    };

    // Mapa de condições
    Map<String, bool> conditions = {
      'hasProfissional': hasProfissional,
      'hasDate': hasDate,
      'hasDuration': hasDuration,
    };

    // Função para processar o template
    String processTemplate(String template, Map<String, String> variables,
        Map<String, bool> conditions) {
      // Processa seções condicionais
      RegExp regExp =
          RegExp(r'\{\?(\w+)\}(.*?)\{\/\1\}', multiLine: true, dotAll: true);
      while (regExp.hasMatch(template)) {
        template = template.replaceAllMapped(regExp, (match) {
          String condition = match.group(1)!;
          String content = match.group(2)!;
          bool include = conditions[condition] ?? false;
          return include ? content : '';
        });
      }

      // Substitui placeholders
      variables.forEach((key, value) {
        template = template.replaceAll('{$key}', value);
      });

      // Remove espaços extras
      return template.replaceAll(RegExp(r'\s+'), ' ').trim();
    }

    // Processa o mainText e o authenticationCode
    mainText = processTemplate(mainText, variables, conditions);
    authenticationCode =
        processTemplate(authenticationCode, variables, conditions);

    // Função para converter código hex em PdfColor
    PdfColor hexToPdfColor(String hexColor) {
      hexColor = hexColor.replaceAll('#', '');
      if (hexColor.isEmpty) {
        return PdfColor(0, 0, 0); // Preto se vazio
      }
      if (hexColor.length == 6) {
        final int colorInt = int.parse(hexColor, radix: 16);
        final red = ((colorInt >> 16) & 0xFF) / 255.0;
        final green = ((colorInt >> 8) & 0xFF) / 255.0;
        final blue = (colorInt & 0xFF) / 255.0;
        return PdfColor(red, green, blue);
      } else {
        // Se inválido, retorna preto
        return PdfColor(0, 0, 0);
      }
    }

    // Converte as cores para PdfColor, com fallback em caso de inválido
    final PdfColor parsedAlunoColor = hexToPdfColor(alunoColor);
    final PdfColor parsedMainTextColor = hexToPdfColor(mainTextColor);
    final PdfColor parsedCodeColor = hexToPdfColor(codeColor);

    // Mapear alinhamento de texto
    pw.TextAlign parseTextAlign(String alignment) {
      switch (alignment.toLowerCase()) {
        case 'left':
          return pw.TextAlign.left;
        case 'right':
          return pw.TextAlign.right;
        case 'center':
          return pw.TextAlign.center;
        case 'justify':
          return pw.TextAlign.justify;
        default:
          return pw.TextAlign.left;
      }
    }

    // Mapear alinhamento do container do aluno para pw.Alignment
    pw.Alignment getContainerAlignment(String alignment) {
      switch (alignment.toLowerCase()) {
        case 'left':
          return pw.Alignment.centerLeft;
        case 'right':
          return pw.Alignment.centerRight;
        case 'center':
          return pw.Alignment.center;
        default:
          return pw.Alignment.centerLeft;
      }
    }

    final pw.TextAlign alunoTextAlign = parseTextAlign(alunoAlignment);
    final pw.TextAlign mainTextAlign = parseTextAlign(mainTextAlignment);
    final pw.Alignment alunoContainerAlignment =
        getContainerAlignment(alunoAlignment);

    // Tentativa de carregar as fontes personalizadas
    pw.Font? alunoFont;
    if (fontAlunoURL.isNotEmpty) {
      try {
        final fontResponse = await http.get(Uri.parse(fontAlunoURL));
        if (fontResponse.statusCode == 200) {
          alunoFont = pw.Font.ttf(fontResponse.bodyBytes.buffer.asByteData());
        }
      } catch (e) {
        print('Falha ao carregar a fonte do aluno: $e');
      }
    }

    pw.Font? mainTextFont;
    if (fontMainTextURL.isNotEmpty) {
      try {
        final fontResponse = await http.get(Uri.parse(fontMainTextURL));
        if (fontResponse.statusCode == 200) {
          mainTextFont =
              pw.Font.ttf(fontResponse.bodyBytes.buffer.asByteData());
        }
      } catch (e) {
        print('Falha ao carregar a fonte do mainText: $e');
      }
    }

    pw.Font? codeFont;
    if (fontCodeURL.isNotEmpty) {
      try {
        final fontResponse = await http.get(Uri.parse(fontCodeURL));
        if (fontResponse.statusCode == 200) {
          codeFont = pw.Font.ttf(fontResponse.bodyBytes.buffer.asByteData());
        }
      } catch (e) {
        print('Falha ao carregar a fonte do code: $e');
      }
    }

    // Parse do SVG
    final svgXml = xml.XmlDocument.parse(svgContent);

    // Lista para IDs dos placeholders removidos
    List<String> placeholdersToRemove = [];

    // Extrair info do placeholder
    Map<String, dynamic>? extractPlaceholderInfo(String placeholderId) {
      final elements = svgXml.findAllElements('g').where(
            (element) => element.getAttribute('id') == placeholderId,
          );
      if (elements.isNotEmpty) {
        final placeholderElement = elements.first;
        placeholdersToRemove.add(placeholderId);

        final rectElement = placeholderElement.findElements('rect').first;
        double width = double.parse(rectElement.getAttribute('width') ?? '0');
        double height = double.parse(rectElement.getAttribute('height') ?? '0');
        final transform = rectElement.getAttribute('transform') ?? '';
        final translateMatch = RegExp(r'translate\(([\d\.]+)[,\s]+([\d\.]+)\)')
            .firstMatch(transform);

        double posX = 0, posY = 0;
        if (translateMatch != null) {
          posX = double.parse(translateMatch.group(1) ?? '0');
          posY = double.parse(translateMatch.group(2) ?? '0');
        }

        return {
          'posX': posX,
          'posY': posY,
          'width': width,
          'height': height,
        };
      } else {
        return null;
      }
    }

    var alunoInfo = extractPlaceholderInfo('aluno_placeholder');
    var mainInfo = extractPlaceholderInfo('main_placeholder');
    var codeInfo = extractPlaceholderInfo('code_placeholder');
    var imageInfo = extractPlaceholderInfo('image_placeholder');

    // Remover placeholders
    placeholdersToRemove.forEach((placeholderId) {
      final elements = svgXml.findAllElements('g').where(
            (element) => element.getAttribute('id') == placeholderId,
          );
      if (elements.isNotEmpty) {
        elements.first.parent?.children.remove(elements.first);
      }
    });

    // Converte SVG de volta pra string
    svgContent = svgXml.toXmlString();

    // Dimensões do SVG
    final svgElement = svgXml.findAllElements('svg').first;
    double width =
        double.tryParse(svgElement.getAttribute('width') ?? '0') ?? 0;
    double height =
        double.tryParse(svgElement.getAttribute('height') ?? '0') ?? 0;

    if (width == 0 || height == 0) {
      final viewBox =
          svgElement.getAttribute('viewBox')?.split(RegExp(r'[ ,]+'));
      if (viewBox != null && viewBox.length == 4) {
        width = double.tryParse(viewBox[2]) ?? 0;
        height = double.tryParse(viewBox[3]) ?? 0;
      }
    }

    if (width == 0 || height == 0) {
      return "Não foi possível determinar as dimensões do SVG.";
    }

    final pageFormat = PdfPageFormat(width, height);

    // Carrega a logo se necessario
    pw.MemoryImage? logoImage;
    if (hasLogo && logoUrl != null && logoUrl.isNotEmpty) {
      final logoResponse = await http.get(Uri.parse(logoUrl));
      if (logoResponse.statusCode == 200) {
        logoImage = pw.MemoryImage(logoResponse.bodyBytes);
      } else {
        return "Erro ao carregar a imagem da logo. Código de status: ${logoResponse.statusCode}.";
      }
    }

    // Constrói o PDF
    final pdfSaved = await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async {
        pdf.addPage(
          pw.Page(
            pageFormat: pageFormat,
            build: (pw.Context context) {
              double maxMainFontSize = 84;
              double alunoFontSize = (alunoInfo?['height'] ?? 0) * 0.9;
              double codeFontSize = (codeInfo?['height'] ?? 0) * 0.5;

              return pw.Stack(
                children: [
                  // SVG de fundo
                  pw.Positioned(
                    left: 0,
                    top: 0,
                    child: pw.SvgImage(
                      svg: svgContent,
                      width: width,
                      height: height,
                    ),
                  ),
                  // Logo se houver
                  if (hasLogo && logoImage != null && imageInfo != null)
                    pw.Positioned(
                      left: imageInfo['posX'],
                      top: imageInfo['posY'],
                      child: pw.Image(
                        logoImage,
                        width: imageInfo['width'],
                        height: imageInfo['height'],
                      ),
                    ),
                  // Texto aluno
                  if (alunoInfo != null)
                    pw.Positioned(
                      left: alunoInfo['posX'],
                      top: alunoInfo['posY'],
                      child: pw.Container(
                        width: alunoInfo['width'],
                        height: alunoInfo['height'],
                        alignment: alunoContainerAlignment,
                        child: pw.Text(
                          aluno.trim(),
                          style: pw.TextStyle(
                            fontSize: alunoFontSize,
                            fontWeight: pw.FontWeight.normal,
                            color: parsedAlunoColor,
                            font: alunoFont, // fonte custom do aluno
                          ),
                          maxLines: 1,
                          textAlign: alunoTextAlign,
                        ),
                      ),
                    ),
                  // Texto principal
                  if (mainInfo != null)
                    pw.Positioned(
                      left: mainInfo['posX'],
                      top: mainInfo['posY'],
                      child: pw.Container(
                        width: mainInfo['width'],
                        height: mainInfo['height'],
                        alignment: pw.Alignment.topLeft,
                        child: pw.Text(
                          mainText.trim(),
                          style: pw.TextStyle(
                            fontSize: maxMainFontSize,
                            fontWeight: pw.FontWeight.normal,
                            color: parsedMainTextColor,
                            font: mainTextFont, // fonte custom do mainText
                          ),
                          textAlign: mainTextAlign,
                        ),
                      ),
                    ),
                  // Texto code
                  if (codeInfo != null)
                    pw.Positioned(
                      left: codeInfo['posX'],
                      top: codeInfo['posY'],
                      child: pw.Container(
                        width: codeInfo['width'],
                        height: codeInfo['height'],
                        alignment: pw.Alignment.center,
                        child: pw.Text(
                          authenticationCode.trim(),
                          style: pw.TextStyle(
                            fontSize: codeFontSize,
                            fontWeight: pw.FontWeight.normal,
                            color: parsedCodeColor,
                            font: codeFont, // fonte custom do code
                          ),
                          maxLines: 1,
                          textAlign: pw.TextAlign.center,
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        );
        return pdf.save();
      },
    );

    return "PDF gerado com sucesso!";
  } catch (e) {
    return "Erro ao gerar o PDF: $e";
  }
}
