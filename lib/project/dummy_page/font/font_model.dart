import '/flutter_flow/flutter_flow_util.dart';
import 'font_widget.dart' show FontWidget;
import 'package:flutter/material.dart';

class FontModel extends FlutterFlowModel<FontWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
