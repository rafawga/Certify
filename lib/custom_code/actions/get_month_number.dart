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

Future<List<int>> getMonthNumber() async {
  // Lista para armazenar os números dos meses
  List<int> monthNumbers = [];

  // Data atual
  DateTime now = DateTime.now();

  // Loop pelos últimos 6 meses
  for (int i = 0; i < 6; i++) {
    // Calcula o mês (considerando o retrocesso de meses)
    int month = DateTime(now.year, now.month - i, 1).month;

    // Adiciona o número do mês à lista
    monthNumbers.add(month);
  }

  // Retorna a lista em ordem cronológica (do mês mais antigo ao atual)
  return monthNumbers.reversed.toList();
}
