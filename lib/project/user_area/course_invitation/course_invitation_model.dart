import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'course_invitation_widget.dart' show CourseInvitationWidget;
import 'package:flutter/material.dart';

class CourseInvitationModel extends FlutterFlowModel<CourseInvitationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in CourseInvitation widget.
  AlunosCursoRecord? alreadyExist;
  // Stores action output result for [Firestore Query - Query a collection] action in CourseInvitation widget.
  int? qntdAlunos;
  // Stores action output result for [Backend Call - Read Document] action in CourseInvitation widget.
  CursosRecord? curso;
  // Stores action output result for [Custom Action - gerarHash] action in Button widget.
  String? generetedHash;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? productor;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
