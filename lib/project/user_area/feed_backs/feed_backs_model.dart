import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'feed_backs_widget.dart' show FeedBacksWidget;
import 'package:flutter/material.dart';

class FeedBacksModel extends FlutterFlowModel<FeedBacksWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Navbar component.
  late NavbarModel navbarModel;
  // State field(s) for feedback widget.
  FocusNode? feedbackFocusNode;
  TextEditingController? feedbackTextController;
  String? Function(BuildContext, String?)? feedbackTextControllerValidator;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
    feedbackFocusNode?.dispose();
    feedbackTextController?.dispose();
  }
}
