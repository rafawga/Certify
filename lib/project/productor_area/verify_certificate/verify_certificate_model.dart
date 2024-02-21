import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/project/components/navbar/navbar_widget.dart';
import 'verify_certificate_widget.dart' show VerifyCertificateWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VerifyCertificateModel extends FlutterFlowModel<VerifyCertificateWidget> {
  ///  Local state fields for this page.

  bool hasSearched = false;

  bool hasFinded = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Navbar component.
  late NavbarModel navbarModel;
  // State field(s) for HashInput widget.
  FocusNode? hashInputFocusNode;
  TextEditingController? hashInputController;
  String? Function(BuildContext, String?)? hashInputControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  AlunosCursoRecord? findedCertificate;
  // Stores action output result for [Backend Call - Read Document] action in IconButton widget.
  UsersRecord? findedUser;
  // Stores action output result for [Backend Call - Read Document] action in IconButton widget.
  CursosRecord? findedCourse;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navbarModel.dispose();
    hashInputFocusNode?.dispose();
    hashInputController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
