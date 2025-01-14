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

import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<int>> getCountCertificatesView() async {
  List<int> counts = []; // Lista para armazenar as contagens
  DateTime now = DateTime.now(); // Data atual

  // Loop pelos últimos 6 meses
  for (int i = 0; i < 6; i++) {
    DateTime firstDay =
        DateTime(now.year, now.month - i, 1); // Primeiro dia do mês
    DateTime lastDay =
        DateTime(now.year, now.month - i + 1, 0); // Último dia do mês

    // Query para contar registros na coleção "alunosCurso" com base no atributo "dataInscricao"
    QuerySnapshot query = await FirebaseFirestore.instance
        .collection('alunosCurso')
        .where('dataInscricao', isGreaterThanOrEqualTo: firstDay)
        .where('dataInscricao', isLessThanOrEqualTo: lastDay)
        .get();

    // Adiciona a contagem de registros à lista
    counts.add(query.size);
  }

  return counts.reversed
      .toList(); // Retorna em ordem cronológica (mês mais antigo -> mais recente)
}
