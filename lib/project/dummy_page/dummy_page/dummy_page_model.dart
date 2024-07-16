import '/flutter_flow/flutter_flow_util.dart';
import 'dummy_page_widget.dart' show DummyPageWidget;
import 'package:flutter/material.dart';

class DummyPageModel extends FlutterFlowModel<DummyPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
