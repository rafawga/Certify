import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/project/components/navbar/navbar_widget.dart';
import '/project/components/user_pop_up/user_pop_up_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'curso_detail_widget.dart' show CursoDetailWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CursoDetailModel extends FlutterFlowModel<CursoDetailWidget> {
  ///  Local state fields for this page.

  bool photoChanged = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Navbar component.
  late NavbarModel navbarModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Name widget.
  FocusNode? nameFocusNode1;
  TextEditingController? nameController1;
  String? Function(BuildContext, String?)? nameController1Validator;
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode1;
  TextEditingController? descriptionController1;
  String? Function(BuildContext, String?)? descriptionController1Validator;
  // State field(s) for Professor widget.
  FocusNode? professorFocusNode1;
  TextEditingController? professorController1;
  String? Function(BuildContext, String?)? professorController1Validator;
  // State field(s) for Duracao widget.
  FocusNode? duracaoFocusNode;
  TextEditingController? duracaoController;
  String? Function(BuildContext, String?)? duracaoControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for LimiteUsers widget.
  FocusNode? limiteUsersFocusNode;
  TextEditingController? limiteUsersController;
  String? Function(BuildContext, String?)? limiteUsersControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for InitalText widget.
  FocusNode? initalTextFocusNode;
  TextEditingController? initalTextController;
  String? Function(BuildContext, String?)? initalTextControllerValidator;
  Color? colorPicked1;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode2;
  TextEditingController? nameController2;
  String? Function(BuildContext, String?)? nameController2Validator;
  Color? colorPicked2;
  // State field(s) for CourseText widget.
  FocusNode? courseTextFocusNode;
  TextEditingController? courseTextController;
  String? Function(BuildContext, String?)? courseTextControllerValidator;
  Color? colorPicked3;
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode2;
  TextEditingController? descriptionController2;
  String? Function(BuildContext, String?)? descriptionController2Validator;
  Color? colorPicked4;
  // State field(s) for ProfText widget.
  FocusNode? profTextFocusNode;
  TextEditingController? profTextController;
  String? Function(BuildContext, String?)? profTextControllerValidator;
  Color? colorPicked5;
  // State field(s) for Professor widget.
  FocusNode? professorFocusNode2;
  TextEditingController? professorController2;
  String? Function(BuildContext, String?)? professorController2Validator;
  Color? colorPicked6;
  // State field(s) for DataText widget.
  FocusNode? dataTextFocusNode;
  TextEditingController? dataTextController;
  String? Function(BuildContext, String?)? dataTextControllerValidator;
  Color? colorPicked7;
  // State field(s) for Professor widget.
  FocusNode? professorFocusNode3;
  TextEditingController? professorController3;
  String? Function(BuildContext, String?)? professorController3Validator;
  Color? colorPicked8;
  // State field(s) for DuracaoText widget.
  FocusNode? duracaoTextFocusNode;
  TextEditingController? duracaoTextController;
  String? Function(BuildContext, String?)? duracaoTextControllerValidator;
  Color? colorPicked9;
  // State field(s) for CorDuracao widget.
  FocusNode? corDuracaoFocusNode;
  TextEditingController? corDuracaoController;
  String? Function(BuildContext, String?)? corDuracaoControllerValidator;
  Color? colorPicked10;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navbarModel.dispose();
    tabBarController?.dispose();
    nameFocusNode1?.dispose();
    nameController1?.dispose();

    descriptionFocusNode1?.dispose();
    descriptionController1?.dispose();

    professorFocusNode1?.dispose();
    professorController1?.dispose();

    duracaoFocusNode?.dispose();
    duracaoController?.dispose();

    limiteUsersFocusNode?.dispose();
    limiteUsersController?.dispose();

    initalTextFocusNode?.dispose();
    initalTextController?.dispose();

    nameFocusNode2?.dispose();
    nameController2?.dispose();

    courseTextFocusNode?.dispose();
    courseTextController?.dispose();

    descriptionFocusNode2?.dispose();
    descriptionController2?.dispose();

    profTextFocusNode?.dispose();
    profTextController?.dispose();

    professorFocusNode2?.dispose();
    professorController2?.dispose();

    dataTextFocusNode?.dispose();
    dataTextController?.dispose();

    professorFocusNode3?.dispose();
    professorController3?.dispose();

    duracaoTextFocusNode?.dispose();
    duracaoTextController?.dispose();

    corDuracaoFocusNode?.dispose();
    corDuracaoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
