import '/flutter_flow/flutter_flow_util.dart';
import '/project/sidebar_expandido/sidebar_expandido_widget.dart';
import '/project/sidebar_reduzido/sidebar_reduzido_widget.dart';
import 'new_user_courses_copy_widget.dart' show NewUserCoursesCopyWidget;
import 'package:flutter/material.dart';

class NewUserCoursesCopyModel
    extends FlutterFlowModel<NewUserCoursesCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SidebarExpandido component.
  late SidebarExpandidoModel sidebarExpandidoModel1;
  // Model for SidebarReduzido component.
  late SidebarReduzidoModel sidebarReduzidoModel;
  // Model for SidebarExpandido component.
  late SidebarExpandidoModel sidebarExpandidoModel2;

  @override
  void initState(BuildContext context) {
    sidebarExpandidoModel1 =
        createModel(context, () => SidebarExpandidoModel());
    sidebarReduzidoModel = createModel(context, () => SidebarReduzidoModel());
    sidebarExpandidoModel2 =
        createModel(context, () => SidebarExpandidoModel());
  }

  @override
  void dispose() {
    sidebarExpandidoModel1.dispose();
    sidebarReduzidoModel.dispose();
    sidebarExpandidoModel2.dispose();
  }
}