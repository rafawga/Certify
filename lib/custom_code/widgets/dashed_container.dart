// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Removi as importações problemáticas
// import '/backend/schema/enums/enums.dart';
// import '/actions/actions.dart' as action_blocks;

import 'package:dotted_border/dotted_border.dart';

class DashedContainer extends StatefulWidget {
  const DashedContainer({
    super.key,
    this.width,
    this.height,
    this.borderColor,
    this.borderWeight,
    this.borderRadius,
    this.borderSpacing,
    required this.innerContainer,
  });

  final double? width;
  final double? height;
  final Color? borderColor;
  final double? borderWeight;
  final double? borderRadius;
  final double? borderSpacing;
  final Widget Function() innerContainer;

  @override
  State<DashedContainer> createState() => _DashedContainerState();
}

class _DashedContainerState extends State<DashedContainer> {
  @override
  Widget build(BuildContext context) {
    Color color = this.widget.borderColor ?? Colors.white;
    double weight = this.widget.borderWeight ?? 1;
    double radius = this.widget.borderRadius ?? 0;
    double spacing = this.widget.borderSpacing ?? 6;

    return DottedBorder(
      color: color,
      strokeWidth: weight,
      radius: Radius.circular(radius),
      borderType: BorderType.RRect,
      dashPattern: [spacing],
      child: this.widget.innerContainer(),
    );
  }
}
