import '/flutter_flow/flutter_flow_util.dart';
import '/project/components/navbar/navbar_widget.dart';
import 'create_new_curse_widget.dart' show CreateNewCurseWidget;
import 'package:flutter/material.dart';

class CreateNewCurseModel extends FlutterFlowModel<CreateNewCurseWidget> {
  ///  Local state fields for this page.

  bool photoChanged = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Navbar component.
  late NavbarModel navbarModel;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for Professor widget.
  FocusNode? professorFocusNode;
  TextEditingController? professorTextController;
  String? Function(BuildContext, String?)? professorTextControllerValidator;
  // State field(s) for Duracao widget.
  FocusNode? duracaoFocusNode;
  TextEditingController? duracaoTextController;
  String? Function(BuildContext, String?)? duracaoTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for LimiteUsers widget.
  FocusNode? limiteUsersFocusNode;
  TextEditingController? limiteUsersTextController;
  String? Function(BuildContext, String?)? limiteUsersTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navbarModel.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    professorFocusNode?.dispose();
    professorTextController?.dispose();

    duracaoFocusNode?.dispose();
    duracaoTextController?.dispose();

    limiteUsersFocusNode?.dispose();
    limiteUsersTextController?.dispose();
  }
}
