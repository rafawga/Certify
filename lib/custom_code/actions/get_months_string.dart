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

Future<List<String>> getMonthsString() async {
  // Lista com as abreviações dos meses em português
  List<String> monthAbbreviations = [
    'JAN',
    'FEV',
    'MAR',
    'ABR',
    'MAI',
    'JUN',
    'JUL',
    'AGO',
    'SET',
    'OUT',
    'NOV',
    'DEZ'
  ];

  // Lista para armazenar as abreviações dos últimos 6 meses
  List<String> lastSixMonths = [];

  // Data atual
  DateTime now = DateTime.now();

  // Loop pelos últimos 6 meses
  for (int i = 0; i < 6; i++) {
    // Calcula o mês (considerando o retrocesso de meses)
    int monthIndex = DateTime(now.year, now.month - i, 1).month - 1;

    // Adiciona a abreviação do mês à lista
    lastSixMonths.add(monthAbbreviations[monthIndex]);
  }

  // Retorna a lista em ordem cronológica (do mais antigo para o mais recente)
  return lastSixMonths.reversed.toList();
}
