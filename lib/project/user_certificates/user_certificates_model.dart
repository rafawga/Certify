import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/project/sidebar_expandido/sidebar_expandido_widget.dart';
import '/project/sidebar_reduzido/sidebar_reduzido_widget.dart';
import 'user_certificates_widget.dart' show UserCertificatesWidget;
import 'package:flutter/material.dart';

class UserCertificatesModel extends FlutterFlowModel<UserCertificatesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar-expandido component.
  late SidebarExpandidoModel sidebarExpandidoModel;
  // Model for sidebar-reduzido component.
  late SidebarReduzidoModel sidebarReduzidoModel;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  TemplateRecord? template2;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  TemplateImagesRecord? image2;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? produtor2;
  // Stores action output result for [Custom Action - gerarCertificado] action in Button widget.
  String? certificadoOutput;

  @override
  void initState(BuildContext context) {
    sidebarExpandidoModel = createModel(context, () => SidebarExpandidoModel());
    sidebarReduzidoModel = createModel(context, () => SidebarReduzidoModel());
  }

  @override
  void dispose() {
    sidebarExpandidoModel.dispose();
    sidebarReduzidoModel.dispose();
  }
}
