import '/backend/backend.dart';
import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'verify_certificate_widget.dart' show VerifyCertificateWidget;
import 'package:flutter/material.dart';

class VerifyCertificateModel extends FlutterFlowModel<VerifyCertificateWidget> {
  ///  Local state fields for this page.

  bool hasSearched = false;

  bool hasFinded = false;

  ///  State fields for stateful widgets in this page.

  // Model for Navbar component.
  late NavbarModel navbarModel;
  // State field(s) for HashInput widget.
  FocusNode? hashInputFocusNode;
  TextEditingController? hashInputTextController;
  String? Function(BuildContext, String?)? hashInputTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  AlunosCursoRecord? findedCertificate;
  // Stores action output result for [Backend Call - Read Document] action in IconButton widget.
  UsersRecord? findedUser;
  // Stores action output result for [Backend Call - Read Document] action in IconButton widget.
  CursosRecord? findedCourse;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
    hashInputFocusNode?.dispose();
    hashInputTextController?.dispose();
  }
}
