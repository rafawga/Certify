import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/project/sidebar_expandido/sidebar_expandido_widget.dart';
import '/project/sidebar_reduzido/sidebar_reduzido_widget.dart';
import 'user_certificates_widget.dart' show UserCertificatesWidget;
import 'package:flutter/material.dart';

class UserCertificatesModel extends FlutterFlowModel<UserCertificatesWidget> {
  ///  Local state fields for this page.

  String currentHash = '123';

  ///  State fields for stateful widgets in this page.

  // Model for sidebar-expandido component.
  late SidebarExpandidoModel sidebarExpandidoModel1;
  // Model for sidebar-reduzido component.
  late SidebarReduzidoModel sidebarReduzidoModel;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  TemplateRecord? template;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  TemplateImagesRecord? image;
  // Stores action output result for [Custom Action - gerarCertificado] action in Button widget.
  String? certificadoOutput;
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
