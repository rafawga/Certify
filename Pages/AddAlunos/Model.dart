import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/project/components/navbar/navbar_widget.dart';
import 'add_alunos_widget.dart' show AddAlunosWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddAlunosModel extends FlutterFlowModel<AddAlunosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Navbar component.
  late NavbarModel navbarModel;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  // State field(s) for Professor widget.
  FocusNode? professorFocusNode;
  TextEditingController? professorController;
  String? Function(BuildContext, String?)? professorControllerValidator;
  // State field(s) for Duracao widget.
  FocusNode? duracaoFocusNode;
  TextEditingController? duracaoController;
  String? Function(BuildContext, String?)? duracaoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    navbarModel.dispose();
    nameFocusNode?.dispose();
    nameController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionController?.dispose();

    professorFocusNode?.dispose();
    professorController?.dispose();

    duracaoFocusNode?.dispose();
    duracaoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
