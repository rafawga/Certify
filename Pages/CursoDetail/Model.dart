import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/project/components/navbar/navbar_widget.dart';
import 'curso_detail_widget.dart' show CursoDetailWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
 
class CursoDetailModel extends FlutterFlowModel<CursoDetailWidget> {
  ///  State fields for stateful widgets in this page.
 
  final unfocusNode = FocusNode();
  // Model for Navbar component.
  late NavbarModel navbarModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
 
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode1;
  TextEditingController? nameController1;
  String? Function(BuildContext, String?)? nameController1Validator;
  // State field(s) for CPF widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfController;
  String? Function(BuildContext, String?)? cpfControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode2;
  TextEditingController? nameController2;
  String? Function(BuildContext, String?)? nameController2Validator;
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
    tabBarController?.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    nameFocusNode1?.dispose();
    nameController1?.dispose();

    cpfFocusNode?.dispose();
    cpfController?.dispose();

    nameFocusNode2?.dispose();
    nameController2?.dispose();

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
