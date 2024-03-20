import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'confirmar_cancelamento_widget.dart' show ConfirmarCancelamentoWidget;
import 'package:flutter/material.dart';

class ConfirmarCancelamentoModel
    extends FlutterFlowModel<ConfirmarCancelamentoWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  AssinaturasRecord? assinaturaUser;
  // Stores action output result for [Backend Call - API (Cancelar a assinatura)] action in Button widget.
  ApiCallResponse? cancelarResponse;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
