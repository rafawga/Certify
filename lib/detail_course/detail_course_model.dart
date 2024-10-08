import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/project/sidebar_expandido/sidebar_expandido_widget.dart';
import '/project/sidebar_reduzido/sidebar_reduzido_widget.dart';
import 'detail_course_widget.dart' show DetailCourseWidget;
import 'package:flutter/material.dart';

class DetailCourseModel extends FlutterFlowModel<DetailCourseWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SidebarExpandido component.
  late SidebarExpandidoModel sidebarExpandidoModel1;
  // Model for SidebarReduzido component.
  late SidebarReduzidoModel sidebarReduzidoModel;
  // Stores action output result for [Backend Call - Read Document] action in Toast_01 widget.
  CursosRecord? cursoSelecionado;
  // Stores action output result for [Custom Action - gerarInviteCode] action in Toast_01 widget.
  String? invitedCode;
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
