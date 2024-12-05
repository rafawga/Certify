import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'texto_certificado_widget.dart' show TextoCertificadoWidget;
import 'package:flutter/material.dart';

class TextoCertificadoModel extends FlutterFlowModel<TextoCertificadoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Ministradopeloprofissional widget.
  bool? ministradopeloprofissionalValue;
  // State field(s) for Datadeconcluso widget.
  bool? datadeconclusoValue;
  // State field(s) for Cargahorria widget.
  bool? cargahorriaValue;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
