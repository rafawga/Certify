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

import 'dart:convert';
import 'dart:math'; // Importa a classe Random para gerar valores aleatórios
import 'package:crypto/crypto.dart';

import 'dart:convert';
import 'package:crypto/crypto.dart';

Future<String> gerarInviteCode(String? courseId) async {
  // Adiciona o courseId, data/hora atual e um valor aleatório
  Random random = Random();
  int randomNumber =
      random.nextInt(100000); // Gera um número aleatório entre 0 e 99999

  String input =
      '${courseId ?? ''}${DateTime.now().toIso8601String()}$randomNumber';

  // Gera o hash usando SHA256
  var bytes = utf8.encode(input);
  var digest = sha256.convert(bytes);

  // Converte o hash em uma string e retorna os primeiros 8 caracteres
  String hash = digest.toString().substring(0, 8);

  return hash;
}
