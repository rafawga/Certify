import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mobile_novo_certificado_widget.dart' show MobileNovoCertificadoWidget;
import 'package:flutter/material.dart';

class MobileNovoCertificadoModel
    extends FlutterFlowModel<MobileNovoCertificadoWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CustomCertificateRequestRecord? created;
  // Stores action output result for [Backend Call - API (Criar Sessao Checkout)] action in Button widget.
  ApiCallResponse? apiResultbji;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
