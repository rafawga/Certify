import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_new_template_widget.dart' show CreateNewTemplateWidget;
import 'package:flutter/material.dart';

class CreateNewTemplateModel extends FlutterFlowModel<CreateNewTemplateWidget> {
  ///  Local state fields for this page.

  int? mode = 1;

  bool photoAdded = false;

  ///  State fields for stateful widgets in this page.

  // Model for Navbar component.
  late NavbarModel navbarModel;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Certificado widget.
  FocusNode? certificadoFocusNode1;
  TextEditingController? certificadoTextController1;
  String? Function(BuildContext, String?)? certificadoTextController1Validator;
  // State field(s) for CertificadoFonte widget.
  FocusNode? certificadoFonteFocusNode;
  TextEditingController? certificadoFonteTextController;
  String? Function(BuildContext, String?)?
      certificadoFonteTextControllerValidator;
  Color? colorPicked1;
  // State field(s) for AntesNome widget.
  FocusNode? antesNomeFocusNode;
  TextEditingController? antesNomeTextController;
  String? Function(BuildContext, String?)? antesNomeTextControllerValidator;
  // State field(s) for AntesNomeFonte widget.
  FocusNode? antesNomeFonteFocusNode;
  TextEditingController? antesNomeFonteTextController;
  String? Function(BuildContext, String?)?
      antesNomeFonteTextControllerValidator;
  Color? colorPicked2;
  // State field(s) for ALuno widget.
  FocusNode? aLunoFocusNode;
  TextEditingController? aLunoTextController;
  String? Function(BuildContext, String?)? aLunoTextControllerValidator;
  // State field(s) for NomeFonte widget.
  FocusNode? nomeFonteFocusNode;
  TextEditingController? nomeFonteTextController;
  String? Function(BuildContext, String?)? nomeFonteTextControllerValidator;
  Color? colorPicked3;
  // State field(s) for Prf widget.
  FocusNode? prfFocusNode;
  TextEditingController? prfTextController;
  String? Function(BuildContext, String?)? prfTextControllerValidator;
  // State field(s) for AntesCursoFonte widget.
  FocusNode? antesCursoFonteFocusNode;
  TextEditingController? antesCursoFonteTextController;
  String? Function(BuildContext, String?)?
      antesCursoFonteTextControllerValidator;
  Color? colorPicked4;
  // State field(s) for Curso widget.
  FocusNode? cursoFocusNode;
  TextEditingController? cursoTextController;
  String? Function(BuildContext, String?)? cursoTextControllerValidator;
  // State field(s) for CursoFonte widget.
  FocusNode? cursoFonteFocusNode;
  TextEditingController? cursoFonteTextController;
  String? Function(BuildContext, String?)? cursoFonteTextControllerValidator;
  Color? colorPicked5;
  // State field(s) for AntesProfessor widget.
  FocusNode? antesProfessorFocusNode;
  TextEditingController? antesProfessorTextController;
  String? Function(BuildContext, String?)?
      antesProfessorTextControllerValidator;
  // State field(s) for AntesProfFonte widget.
  FocusNode? antesProfFonteFocusNode;
  TextEditingController? antesProfFonteTextController;
  String? Function(BuildContext, String?)?
      antesProfFonteTextControllerValidator;
  Color? colorPicked6;
  // State field(s) for PRofessor widget.
  FocusNode? pRofessorFocusNode;
  TextEditingController? pRofessorTextController;
  String? Function(BuildContext, String?)? pRofessorTextControllerValidator;
  // State field(s) for ProfFonte widget.
  FocusNode? profFonteFocusNode;
  TextEditingController? profFonteTextController;
  String? Function(BuildContext, String?)? profFonteTextControllerValidator;
  Color? colorPicked7;
  // State field(s) for Antesdata widget.
  FocusNode? antesdataFocusNode;
  TextEditingController? antesdataTextController;
  String? Function(BuildContext, String?)? antesdataTextControllerValidator;
  // State field(s) for AntesDataFonte widget.
  FocusNode? antesDataFonteFocusNode;
  TextEditingController? antesDataFonteTextController;
  String? Function(BuildContext, String?)?
      antesDataFonteTextControllerValidator;
  Color? colorPicked8;
  // State field(s) for data widget.
  FocusNode? dataFocusNode;
  TextEditingController? dataTextController;
  String? Function(BuildContext, String?)? dataTextControllerValidator;
  // State field(s) for DataFonte widget.
  FocusNode? dataFonteFocusNode;
  TextEditingController? dataFonteTextController;
  String? Function(BuildContext, String?)? dataFonteTextControllerValidator;
  Color? colorPicked9;
  // State field(s) for antesDuracao widget.
  FocusNode? antesDuracaoFocusNode;
  TextEditingController? antesDuracaoTextController;
  String? Function(BuildContext, String?)? antesDuracaoTextControllerValidator;
  // State field(s) for AntesDuracaoFonte widget.
  FocusNode? antesDuracaoFonteFocusNode;
  TextEditingController? antesDuracaoFonteTextController;
  String? Function(BuildContext, String?)?
      antesDuracaoFonteTextControllerValidator;
  Color? colorPicked10;
  // State field(s) for Certificado widget.
  FocusNode? certificadoFocusNode2;
  TextEditingController? certificadoTextController2;
  String? Function(BuildContext, String?)? certificadoTextController2Validator;
  // State field(s) for DuracaoFonte widget.
  FocusNode? duracaoFonteFocusNode;
  TextEditingController? duracaoFonteTextController;
  String? Function(BuildContext, String?)? duracaoFonteTextControllerValidator;
  Color? colorPicked11;
  // State field(s) for PowerediDokey widget.
  FocusNode? powerediDokeyFocusNode;
  TextEditingController? powerediDokeyTextController;
  String? Function(BuildContext, String?)? powerediDokeyTextControllerValidator;
  // State field(s) for idokeyFonte widget.
  FocusNode? idokeyFonteFocusNode;
  TextEditingController? idokeyFonteTextController;
  String? Function(BuildContext, String?)? idokeyFonteTextControllerValidator;
  Color? colorPicked12;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Keysegurana widget.
  FocusNode? keyseguranaFocusNode;
  TextEditingController? keyseguranaTextController;
  String? Function(BuildContext, String?)? keyseguranaTextControllerValidator;
  // State field(s) for keyFonte widget.
  FocusNode? keyFonteFocusNode;
  TextEditingController? keyFonteTextController;
  String? Function(BuildContext, String?)? keyFonteTextControllerValidator;
  Color? colorPicked13;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    certificadoFocusNode1?.dispose();
    certificadoTextController1?.dispose();

    certificadoFonteFocusNode?.dispose();
    certificadoFonteTextController?.dispose();

    antesNomeFocusNode?.dispose();
    antesNomeTextController?.dispose();

    antesNomeFonteFocusNode?.dispose();
    antesNomeFonteTextController?.dispose();

    aLunoFocusNode?.dispose();
    aLunoTextController?.dispose();

    nomeFonteFocusNode?.dispose();
    nomeFonteTextController?.dispose();

    prfFocusNode?.dispose();
    prfTextController?.dispose();

    antesCursoFonteFocusNode?.dispose();
    antesCursoFonteTextController?.dispose();

    cursoFocusNode?.dispose();
    cursoTextController?.dispose();

    cursoFonteFocusNode?.dispose();
    cursoFonteTextController?.dispose();

    antesProfessorFocusNode?.dispose();
    antesProfessorTextController?.dispose();

    antesProfFonteFocusNode?.dispose();
    antesProfFonteTextController?.dispose();

    pRofessorFocusNode?.dispose();
    pRofessorTextController?.dispose();

    profFonteFocusNode?.dispose();
    profFonteTextController?.dispose();

    antesdataFocusNode?.dispose();
    antesdataTextController?.dispose();

    antesDataFonteFocusNode?.dispose();
    antesDataFonteTextController?.dispose();

    dataFocusNode?.dispose();
    dataTextController?.dispose();

    dataFonteFocusNode?.dispose();
    dataFonteTextController?.dispose();

    antesDuracaoFocusNode?.dispose();
    antesDuracaoTextController?.dispose();

    antesDuracaoFonteFocusNode?.dispose();
    antesDuracaoFonteTextController?.dispose();

    certificadoFocusNode2?.dispose();
    certificadoTextController2?.dispose();

    duracaoFonteFocusNode?.dispose();
    duracaoFonteTextController?.dispose();

    powerediDokeyFocusNode?.dispose();
    powerediDokeyTextController?.dispose();

    idokeyFonteFocusNode?.dispose();
    idokeyFonteTextController?.dispose();

    keyseguranaFocusNode?.dispose();
    keyseguranaTextController?.dispose();

    keyFonteFocusNode?.dispose();
    keyFonteTextController?.dispose();
  }
}
