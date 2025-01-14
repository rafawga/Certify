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

Future<int> indexOfS(
  List<TemplateImagesRecord>?
      templates, // Lista de objetos TemplateImagesRecord
  int? valueToSearch, // Valor a ser procurado no campo "Index"
) async {
  // Verifica se a lista ou o valor a ser procurado é nulo
  if (templates == null || valueToSearch == null) {
    return -1; // Retorna -1 indicando que não foi encontrado
  }

  // Itera sobre a lista para encontrar o índice
  for (int i = 0; i < templates.length; i++) {
    if (templates[i].index == valueToSearch) {
      return i; // Retorna o índice assim que encontrar o valor
    }
  }

  return -1; // Retorna -1 se o valor não for encontrado
}
