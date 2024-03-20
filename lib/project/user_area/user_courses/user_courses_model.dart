import '/flutter_flow/flutter_flow_util.dart';
import '/project/components/navbar/navbar_widget.dart';
import 'user_courses_widget.dart' show UserCoursesWidget;
import 'package:flutter/material.dart';

class UserCoursesModel extends FlutterFlowModel<UserCoursesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Navbar component.
  late NavbarModel navbarModel;

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
