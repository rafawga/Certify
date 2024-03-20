import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/project/components/navbar/navbar_widget.dart';
import 'curso_detail_widget.dart' show CursoDetailWidget;
import 'package:flutter/material.dart';

class CursoDetailModel extends FlutterFlowModel<CursoDetailWidget> {
  ///  Local state fields for this page.

  bool photoChanged = false;

  bool dataPickerChange = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Navbar component.
  late NavbarModel navbarModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

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

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  TemplateCertificadoRecord? templateRef;

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
    nameFocusNode?.dispose();
    nameController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionController?.dispose();

    professorFocusNode?.dispose();
    professorController?.dispose();

    duracaoFocusNode?.dispose();
    duracaoController?.dispose();

    limiteUsersFocusNode?.dispose();
    limiteUsersController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
