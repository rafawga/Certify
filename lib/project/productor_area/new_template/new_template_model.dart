import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/project/components/navbar/navbar_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'new_template_widget.dart' show NewTemplateWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewTemplateModel extends FlutterFlowModel<NewTemplateWidget> {
  ///  Local state fields for this page.

  int? mode = 1;

  bool photoAdded = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Navbar component.
  late NavbarModel navbarModel;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Certificado widget.
  FocusNode? certificadoFocusNode1;
  TextEditingController? certificadoController1;
  String? Function(BuildContext, String?)? certificadoController1Validator;
  // State field(s) for CertificadoFonte widget.
  FocusNode? certificadoFonteFocusNode;
  TextEditingController? certificadoFonteController;
  String? Function(BuildContext, String?)? certificadoFonteControllerValidator;
  Color? colorPicked1;
  // State field(s) for AntesNome widget.
  FocusNode? antesNomeFocusNode;
  TextEditingController? antesNomeController;
  String? Function(BuildContext, String?)? antesNomeControllerValidator;
  // State field(s) for AntesNomeFonte widget.
  FocusNode? antesNomeFonteFocusNode;
  TextEditingController? antesNomeFonteController;
  String? Function(BuildContext, String?)? antesNomeFonteControllerValidator;
  Color? colorPicked2;
  // State field(s) for ALuno widget.
  FocusNode? aLunoFocusNode;
  TextEditingController? aLunoController;
  String? Function(BuildContext, String?)? aLunoControllerValidator;
  // State field(s) for NomeFonte widget.
  FocusNode? nomeFonteFocusNode;
  TextEditingController? nomeFonteController;
  String? Function(BuildContext, String?)? nomeFonteControllerValidator;
  Color? colorPicked3;
  // State field(s) for Prf widget.
  FocusNode? prfFocusNode;
  TextEditingController? prfController;
  String? Function(BuildContext, String?)? prfControllerValidator;
  // State field(s) for AntesCursoFonte widget.
  FocusNode? antesCursoFonteFocusNode;
  TextEditingController? antesCursoFonteController;
  String? Function(BuildContext, String?)? antesCursoFonteControllerValidator;
  Color? colorPicked4;
  // State field(s) for Curso widget.
  FocusNode? cursoFocusNode;
  TextEditingController? cursoController;
  String? Function(BuildContext, String?)? cursoControllerValidator;
  // State field(s) for CursoFonte widget.
  FocusNode? cursoFonteFocusNode;
  TextEditingController? cursoFonteController;
  String? Function(BuildContext, String?)? cursoFonteControllerValidator;
  Color? colorPicked5;
  // State field(s) for AntesProfessor widget.
  FocusNode? antesProfessorFocusNode;
  TextEditingController? antesProfessorController;
  String? Function(BuildContext, String?)? antesProfessorControllerValidator;
  // State field(s) for AntesProfFonte widget.
  FocusNode? antesProfFonteFocusNode;
  TextEditingController? antesProfFonteController;
  String? Function(BuildContext, String?)? antesProfFonteControllerValidator;
  Color? colorPicked6;
  // State field(s) for PRofessor widget.
  FocusNode? pRofessorFocusNode;
  TextEditingController? pRofessorController;
  String? Function(BuildContext, String?)? pRofessorControllerValidator;
  // State field(s) for ProfFonte widget.
  FocusNode? profFonteFocusNode;
  TextEditingController? profFonteController;
  String? Function(BuildContext, String?)? profFonteControllerValidator;
  Color? colorPicked7;
  // State field(s) for Antesdata widget.
  FocusNode? antesdataFocusNode;
  TextEditingController? antesdataController;
  String? Function(BuildContext, String?)? antesdataControllerValidator;
  // State field(s) for AntesDataFonte widget.
  FocusNode? antesDataFonteFocusNode;
  TextEditingController? antesDataFonteController;
  String? Function(BuildContext, String?)? antesDataFonteControllerValidator;
  Color? colorPicked8;
  // State field(s) for data widget.
  FocusNode? dataFocusNode;
  TextEditingController? dataController;
  String? Function(BuildContext, String?)? dataControllerValidator;
  // State field(s) for DataFonte widget.
  FocusNode? dataFonteFocusNode;
  TextEditingController? dataFonteController;
  String? Function(BuildContext, String?)? dataFonteControllerValidator;
  Color? colorPicked9;
  // State field(s) for antesDuracao widget.
  FocusNode? antesDuracaoFocusNode;
  TextEditingController? antesDuracaoController;
  String? Function(BuildContext, String?)? antesDuracaoControllerValidator;
  // State field(s) for AntesDuracaoFonte widget.
  FocusNode? antesDuracaoFonteFocusNode;
  TextEditingController? antesDuracaoFonteController;
  String? Function(BuildContext, String?)? antesDuracaoFonteControllerValidator;
  Color? colorPicked10;
  // State field(s) for Certificado widget.
  FocusNode? certificadoFocusNode2;
  TextEditingController? certificadoController2;
  String? Function(BuildContext, String?)? certificadoController2Validator;
  // State field(s) for DuracaoFonte widget.
  FocusNode? duracaoFonteFocusNode;
  TextEditingController? duracaoFonteController;
  String? Function(BuildContext, String?)? duracaoFonteControllerValidator;
  Color? colorPicked11;
  // State field(s) for PowerediDokey widget.
  FocusNode? powerediDokeyFocusNode;
  TextEditingController? powerediDokeyController;
  String? Function(BuildContext, String?)? powerediDokeyControllerValidator;
  // State field(s) for idokeyFonte widget.
  FocusNode? idokeyFonteFocusNode;
  TextEditingController? idokeyFonteController;
  String? Function(BuildContext, String?)? idokeyFonteControllerValidator;
  Color? colorPicked12;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Keysegurana widget.
  FocusNode? keyseguranaFocusNode;
  TextEditingController? keyseguranaController;
  String? Function(BuildContext, String?)? keyseguranaControllerValidator;
  // State field(s) for keyFonte widget.
  FocusNode? keyFonteFocusNode;
  TextEditingController? keyFonteController;
  String? Function(BuildContext, String?)? keyFonteControllerValidator;
  Color? colorPicked13;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navbarModel.dispose();
    nameFocusNode?.dispose();
    nameController?.dispose();

    certificadoFocusNode1?.dispose();
    certificadoController1?.dispose();

    certificadoFonteFocusNode?.dispose();
    certificadoFonteController?.dispose();

    antesNomeFocusNode?.dispose();
    antesNomeController?.dispose();

    antesNomeFonteFocusNode?.dispose();
    antesNomeFonteController?.dispose();

    aLunoFocusNode?.dispose();
    aLunoController?.dispose();

    nomeFonteFocusNode?.dispose();
    nomeFonteController?.dispose();

    prfFocusNode?.dispose();
    prfController?.dispose();

    antesCursoFonteFocusNode?.dispose();
    antesCursoFonteController?.dispose();

    cursoFocusNode?.dispose();
    cursoController?.dispose();

    cursoFonteFocusNode?.dispose();
    cursoFonteController?.dispose();

    antesProfessorFocusNode?.dispose();
    antesProfessorController?.dispose();

    antesProfFonteFocusNode?.dispose();
    antesProfFonteController?.dispose();

    pRofessorFocusNode?.dispose();
    pRofessorController?.dispose();

    profFonteFocusNode?.dispose();
    profFonteController?.dispose();

    antesdataFocusNode?.dispose();
    antesdataController?.dispose();

    antesDataFonteFocusNode?.dispose();
    antesDataFonteController?.dispose();

    dataFocusNode?.dispose();
    dataController?.dispose();

    dataFonteFocusNode?.dispose();
    dataFonteController?.dispose();

    antesDuracaoFocusNode?.dispose();
    antesDuracaoController?.dispose();

    antesDuracaoFonteFocusNode?.dispose();
    antesDuracaoFonteController?.dispose();

    certificadoFocusNode2?.dispose();
    certificadoController2?.dispose();

    duracaoFonteFocusNode?.dispose();
    duracaoFonteController?.dispose();

    powerediDokeyFocusNode?.dispose();
    powerediDokeyController?.dispose();

    idokeyFonteFocusNode?.dispose();
    idokeyFonteController?.dispose();

    keyseguranaFocusNode?.dispose();
    keyseguranaController?.dispose();

    keyFonteFocusNode?.dispose();
    keyFonteController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
