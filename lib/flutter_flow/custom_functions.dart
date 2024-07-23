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
import '/auth/firebase_auth/auth_util.dart';

String? colorToString(Color? cor) {
  if (cor == null) return null;

  // Extract the ARGB components of the color
  int alpha = cor.alpha;
  int red = cor.red;
  int green = cor.green;
  int blue = cor.blue;

  // Convert the components to a hexadecimal string
  String colorStr =
      '#${alpha.toRadixString(16).padLeft(2, '0')}${red.toRadixString(16).padLeft(2, '0')}${green.toRadixString(16).padLeft(2, '0')}${blue.toRadixString(16).padLeft(2, '0')}';

  return colorStr;
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
