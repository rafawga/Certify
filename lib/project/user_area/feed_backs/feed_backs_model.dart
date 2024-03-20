import '/flutter_flow/flutter_flow_util.dart';
import '/project/components/navbar/navbar_widget.dart';
import 'feed_backs_widget.dart' show FeedBacksWidget;
import 'package:flutter/material.dart';

class FeedBacksModel extends FlutterFlowModel<FeedBacksWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Navbar component.
  late NavbarModel navbarModel;
  // State field(s) for feedback widget.
  FocusNode? feedbackFocusNode;
  TextEditingController? feedbackController;
  String? Function(BuildContext, String?)? feedbackControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navbarModel.dispose();
    feedbackFocusNode?.dispose();
    feedbackController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
