import '/flutter_flow/flutter_flow_util.dart';
import '/project/sidebar_expandido/sidebar_expandido_widget.dart';
import 'new_home_page_widget.dart' show NewHomePageWidget;
import 'package:flutter/material.dart';

class NewHomePageModel extends FlutterFlowModel<NewHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SidebarExpandido component.
  late SidebarExpandidoModel sidebarExpandidoModel1;
  // Model for SidebarExpandido component.
  late SidebarExpandidoModel sidebarExpandidoModel2;

  @override
  void initState(BuildContext context) {
    sidebarExpandidoModel1 =
        createModel(context, () => SidebarExpandidoModel());
    sidebarExpandidoModel2 =
        createModel(context, () => SidebarExpandidoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sidebarExpandidoModel1.dispose();
    sidebarExpandidoModel2.dispose();
  }
}
