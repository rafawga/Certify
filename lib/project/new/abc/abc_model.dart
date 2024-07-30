import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'abc_widget.dart' show AbcWidget;
import 'package:flutter/material.dart';

class AbcModel extends FlutterFlowModel<AbcWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navbarModel.dispose();
  }
}
