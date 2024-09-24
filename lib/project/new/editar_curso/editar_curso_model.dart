import '/flutter_flow/flutter_flow_util.dart';
import '/project/sidebar_expandido/sidebar_expandido_widget.dart';
import '/project/sidebar_reduzido/sidebar_reduzido_widget.dart';
import 'editar_curso_widget.dart' show EditarCursoWidget;
import 'package:flutter/material.dart';

class EditarCursoModel extends FlutterFlowModel<EditarCursoWidget> {
  ///  Local state fields for this page.

  bool photoChanged = false;

  ///  State fields for stateful widgets in this page.

  // Model for SidebarExpandido component.
  late SidebarExpandidoModel sidebarExpandidoModel1;
  // Model for SidebarReduzido component.
  late SidebarReduzidoModel sidebarReduzidoModel;
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

  // Model for SidebarExpandido component.
  late SidebarExpandidoModel sidebarExpandidoModel2;

  @override
  void initState(BuildContext context) {
    sidebarExpandidoModel1 =
        createModel(context, () => SidebarExpandidoModel());
    sidebarReduzidoModel = createModel(context, () => SidebarReduzidoModel());
    sidebarExpandidoModel2 =
        createModel(context, () => SidebarExpandidoModel());
  }

  @override
  void dispose() {
    sidebarExpandidoModel1.dispose();
    sidebarReduzidoModel.dispose();
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

    sidebarExpandidoModel2.dispose();
  }
}
