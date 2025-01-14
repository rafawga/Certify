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

Future<List<DateTime>> getMonthsRange() async {
  // Pega a data atual
  DateTime now = DateTime.now();

  // Primeiro e último dia do mês atual
  DateTime firstDayCurrent = DateTime(now.year, now.month, 1);
  DateTime lastDayCurrent = DateTime(now.year, now.month + 1, 0);

  // Primeiro e último dia do mês anterior
  DateTime firstDayPrevious = DateTime(now.year, now.month - 1, 1);
  DateTime lastDayPrevious = DateTime(now.year, now.month, 0);

  // Retorna as datas em uma lista
  return [
    firstDayCurrent, // Índice 0: Primeiro dia do mês atual
    lastDayCurrent, // Índice 1: Último dia do mês atual
    firstDayPrevious, // Índice 2: Primeiro dia do mês anterior
    lastDayPrevious, // Índice 3: Último dia do mês anterior
  ];
}
