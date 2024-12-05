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

import 'package:firebase_storage/firebase_storage.dart'; // Import necessário para usar o Firebase Storage

Future<String> deleteFileFromFirebaseStorage(String? file) async {
  if (file == null || file.isEmpty) {
    return 'O caminho do arquivo é nulo ou vazio.'; // Retorna erro se o caminho for inválido
  }

  try {
    // Cria uma referência ao Firebase Storage com base no caminho do arquivo
    final storageRef = FirebaseStorage.instance.ref().child(file);

    // Deleta o arquivo
    await storageRef.delete();

    // Retorna mensagem de sucesso
    return 'Arquivo deletado com sucesso: $file';
  } catch (e) {
    // Captura o erro e retorna a mensagem de erro
    return 'Erro ao deletar o arquivo: $e';
  }
}
