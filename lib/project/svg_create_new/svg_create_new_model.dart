import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'svg_create_new_widget.dart' show SvgCreateNewWidget;
import 'package:flutter/material.dart';

class SvgCreateNewModel extends FlutterFlowModel<SvgCreateNewWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController;
  List<String>? get checkboxGroupValues => checkboxGroupValueController?.value;
  set checkboxGroupValues(List<String>? v) =>
      checkboxGroupValueController?.value = v;

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for aluno_align widget.
  String? alunoAlignValue;
  FormFieldController<String>? alunoAlignValueController;
  // State field(s) for maintext_align widget.
  String? maintextAlignValue;
  FormFieldController<String>? maintextAlignValueController;
  // State field(s) for fontaluno widget.
  FocusNode? fontalunoFocusNode;
  TextEditingController? fontalunoTextController;
  String? Function(BuildContext, String?)? fontalunoTextControllerValidator;
  // State field(s) for fonteMainText widget.
  FocusNode? fonteMainTextFocusNode;
  TextEditingController? fonteMainTextTextController;
  String? Function(BuildContext, String?)? fonteMainTextTextControllerValidator;
  // State field(s) for fonteCode widget.
  FocusNode? fonteCodeFocusNode;
  TextEditingController? fonteCodeTextController;
  String? Function(BuildContext, String?)? fonteCodeTextControllerValidator;
  // State field(s) for AlunoEscale widget.
  FocusNode? alunoEscaleFocusNode;
  TextEditingController? alunoEscaleTextController;
  String? Function(BuildContext, String?)? alunoEscaleTextControllerValidator;
  // State field(s) for MainTextEscale widget.
  FocusNode? mainTextEscaleFocusNode;
  TextEditingController? mainTextEscaleTextController;
  String? Function(BuildContext, String?)?
      mainTextEscaleTextControllerValidator;
  Color? colorPicked1;
  Color? colorPicked2;
  Color? colorPicked3;
  // State field(s) for mainText widget.
  FocusNode? mainTextFocusNode;
  TextEditingController? mainTextTextController;
  String? Function(BuildContext, String?)? mainTextTextControllerValidator;
  // State field(s) for HasDetails widget.
  bool? hasDetailsValue;
  // State field(s) for nomeAluno_test widget.
  FocusNode? nomeAlunoTestFocusNode;
  TextEditingController? nomeAlunoTestTextController;
  String? Function(BuildContext, String?)? nomeAlunoTestTextControllerValidator;
  // State field(s) for nome_curso_test widget.
  FocusNode? nomeCursoTestFocusNode;
  TextEditingController? nomeCursoTestTextController;
  String? Function(BuildContext, String?)? nomeCursoTestTextControllerValidator;
  Color? colorPicked4;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  TemplateImagesRecord? ultimo;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    fontalunoFocusNode?.dispose();
    fontalunoTextController?.dispose();

    fonteMainTextFocusNode?.dispose();
    fonteMainTextTextController?.dispose();

    fonteCodeFocusNode?.dispose();
    fonteCodeTextController?.dispose();

    alunoEscaleFocusNode?.dispose();
    alunoEscaleTextController?.dispose();

    mainTextEscaleFocusNode?.dispose();
    mainTextEscaleTextController?.dispose();

    mainTextFocusNode?.dispose();
    mainTextTextController?.dispose();

    nomeAlunoTestFocusNode?.dispose();
    nomeAlunoTestTextController?.dispose();

    nomeCursoTestFocusNode?.dispose();
    nomeCursoTestTextController?.dispose();
  }
}
