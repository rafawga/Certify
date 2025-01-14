import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

String? colorToString(Color? cor) {
  if (cor == null) return null;

  // Extrai apenas os componentes RGB da cor
  int red = cor.red;
  int green = cor.green;
  int blue = cor.blue;

  // Converte os componentes para uma string hexadecimal, garantindo dois dígitos
  String colorStr =
      '#${red.toRadixString(16).padLeft(2, '0')}${green.toRadixString(16).padLeft(2, '0')}${blue.toRadixString(16).padLeft(2, '0')}';

  // Converte a string para maiúsculas (opcional, mais comum em CSS)
  return colorStr.toUpperCase();
}

Color? stringToColor(String? cor) {
  if (cor == null ||
      (cor.length != 7 && cor.length != 9) ||
      !cor.startsWith('#')) {
    return null; // Return null if the input is null, not of expected length, or doesn't start with '#'
  }

  try {
    // If the string is in the format #RRGGBB, add full opacity (FF) as the alpha value
    if (cor.length == 7) {
      cor = '#FF' + cor.substring(1);
    }
    // Parse the string to extract the ARGB values
    int value = int.parse(cor.substring(1), radix: 16);
    return Color(value);
  } catch (e) {
    // If parsing fails, return null
    return null;
  }
}

String? getWordAtIndex(
  String? value,
  String? index,
) {
  if (value == null || index == null) {
    return null;
  }

  int? idx = int.tryParse(index);

  if (idx == null || idx < 0) {
    return null;
  }

  List<String> words = value.split(' ');

  if (idx >= words.length) {
    return null;
  }

  return words[idx];
}

String? gerarText(
  bool? profissionalBool,
  bool? cargaBool,
  bool? dataBool,
  bool? isCurso,
) {
  // Inicia a mensagem com o texto fixo
  String mensagem = "Certificamos que [aluno] concluiu ";

  // Verifica se é curso ou treinamento
  if (isCurso == true) {
    mensagem += "o curso";
  } else {
    mensagem += "o treinamento";
  }

  // Lista para armazenar as partes opcionais do texto
  List<String> partesOpcionais = [];

  // Adiciona "ministrado pelo profissional Albert Einstein" se profissionalBool for true
  if (profissionalBool == true) {
    partesOpcionais.add("ministrado pelo [profissional]");
  }

  // Adiciona "na data de 11/12/2024" se dataBool for true
  if (dataBool == true) {
    partesOpcionais.add("na data de dd/mm/aaaa");
  }

  // Adiciona "com uma carga horária de x horas" se cargaBool for true
  if (cargaBool == true) {
    partesOpcionais.add("com uma carga horária de [x horas]");
  }

  // Concatena as partes opcionais com vírgulas, se houver
  if (partesOpcionais.isNotEmpty) {
    mensagem += ", " + partesOpcionais.join(", ");
  }

  // Adiciona o ponto final
  mensagem += ".";

  return mensagem;
}

String? imagePathToString(String? imagePath) {
  return imagePath;
}

List<DateTime> getCurrentMonth() {
  DateTime now = DateTime.now();

  // Mês Atual
  DateTime firstDayCurrent = DateTime(now.year, now.month, 1);
  DateTime lastDayCurrent = DateTime(now.year, now.month + 1, 0);

  // Mês Anterior
  DateTime firstDayPrevious = DateTime(now.year, now.month - 1, 1);
  DateTime lastDayPrevious = DateTime(now.year, now.month, 0);

  // Retorna uma lista com as datas
  return [
    firstDayCurrent, // Primeiro dia do mês atual
    lastDayCurrent, // Último dia do mês atual
    firstDayPrevious, // Primeiro dia do mês anterior
    lastDayPrevious, // Último dia do mês anterior
  ];
}
