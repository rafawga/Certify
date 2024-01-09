// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:crypto/crypto.dart';

Future<String?> gerarHash(
  String? AlunoID,
  String? CursoID,
) async {
  // Verifica se as strings são nulas ou têm menos de 3 caracteres
  if (AlunoID == null ||
      CursoID == null ||
      AlunoID.length < 3 ||
      CursoID.length < 3) {
    return null;
  }

  // Pega as 3 primeiras letras de AlunoID
  String tresPrimeirasAluno = AlunoID.substring(0, 3);

  // Pega as 3 últimas letras de CursoID
  String tresUltimasCurso = CursoID.substring(CursoID.length - 3);

  // Concatena as partes
  String concatenada = tresPrimeirasAluno + tresUltimasCurso;

  // Gera o hash da string concatenada
  var bytes = utf8.encode(concatenada); // Converte a string em bytes
  var digest = sha256.convert(bytes); // Calcula o hash SHA256

  // Retorna apenas os primeiros 30 caracteres do hash
  return digest.toString().substring(0, 30);
}
