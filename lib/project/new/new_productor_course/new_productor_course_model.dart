import '/flutter_flow/flutter_flow_util.dart';
import '/project/sidebar_expandido/sidebar_expandido_widget.dart';
import '/project/sidebar_reduzido/sidebar_reduzido_widget.dart';
import 'new_productor_course_widget.dart' show NewProductorCourseWidget;
import 'package:flutter/material.dart';

class NewProductorCourseModel
    extends FlutterFlowModel<NewProductorCourseWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SidebarExpandido component.
  late SidebarExpandidoModel sidebarExpandidoModel;
  // Model for SidebarReduzido component.
  late SidebarReduzidoModel sidebarReduzidoModel;

  @override
  void initState(BuildContext context) {
    sidebarExpandidoModel = createModel(context, () => SidebarExpandidoModel());
    sidebarReduzidoModel = createModel(context, () => SidebarReduzidoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sidebarExpandidoModel.dispose();
    sidebarReduzidoModel.dispose();
  }
}
