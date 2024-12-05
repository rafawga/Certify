import '/flutter_flow/flutter_flow_util.dart';
import '/project/sidebar_expandido/sidebar_expandido_widget.dart';
import '/project/sidebar_reduzido/sidebar_reduzido_widget.dart';
import 'productor_course_widget.dart' show ProductorCourseWidget;
import 'package:flutter/material.dart';

class ProductorCourseModel extends FlutterFlowModel<ProductorCourseWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar-expandido component.
  late SidebarExpandidoModel sidebarExpandidoModel1;
  // Model for sidebar-reduzido component.
  late SidebarReduzidoModel sidebarReduzidoModel;
  // Model for sidebar-expandido component.
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
