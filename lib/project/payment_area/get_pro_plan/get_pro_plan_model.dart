import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/project/components/navbar/navbar_widget.dart';
import 'get_pro_plan_widget.dart' show GetProPlanWidget;
import 'package:flutter/material.dart';

class GetProPlanModel extends FlutterFlowModel<GetProPlanWidget> {
  ///  Local state fields for this page.

  bool hasSearched = false;

  bool hasFinded = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Navbar component.
  late NavbarModel navbarModel;
  // Stores action output result for [Backend Call - API (Criar Sessao Checkout)] action in Button widget.
  ApiCallResponse? apiResult6ee;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
