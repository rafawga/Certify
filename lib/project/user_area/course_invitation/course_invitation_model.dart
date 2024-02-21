import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/project/components/navbar/navbar_widget.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import 'course_invitation_widget.dart' show CourseInvitationWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CourseInvitationModel extends FlutterFlowModel<CourseInvitationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in CourseInvitation widget.
  AlunosCursoRecord? alreadyExist;
  // Stores action output result for [Firestore Query - Query a collection] action in CourseInvitation widget.
  int? qntdAlunos;
  // Stores action output result for [Backend Call - Read Document] action in CourseInvitation widget.
  CursosRecord? curso;
  // Model for Navbar component.
  late NavbarModel navbarModel;
  // Stores action output result for [Custom Action - gerarHash] action in Button widget.
  String? generetedHash;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? productor;

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
