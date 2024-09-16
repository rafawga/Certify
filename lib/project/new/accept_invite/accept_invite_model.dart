import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/project/sidebar_expandido/sidebar_expandido_widget.dart';
import '/project/sidebar_reduzido/sidebar_reduzido_widget.dart';
import 'accept_invite_widget.dart' show AcceptInviteWidget;
import 'package:flutter/material.dart';

class AcceptInviteModel extends FlutterFlowModel<AcceptInviteWidget> {
  ///  Local state fields for this page.

  CursosRecord? curso;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in accept-invite widget.
  CursosRecord? cursoEncontrado;
  // Stores action output result for [Firestore Query - Query a collection] action in accept-invite widget.
  AlunosCursoRecord? alreadyExist;
  // Stores action output result for [Firestore Query - Query a collection] action in accept-invite widget.
  int? qntdAlunos;
  // Model for SidebarExpandido component.
  late SidebarExpandidoModel sidebarExpandidoModel1;
  // Model for SidebarReduzido component.
  late SidebarReduzidoModel sidebarReduzidoModel;
  // Stores action output result for [Custom Action - gerarHash] action in Button widget.
  String? generetedHash;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? productor;
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
