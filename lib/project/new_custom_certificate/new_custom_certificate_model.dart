import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/project/sidebar_expandido/sidebar_expandido_widget.dart';
import '/project/sidebar_reduzido/sidebar_reduzido_widget.dart';
import 'new_custom_certificate_widget.dart' show NewCustomCertificateWidget;
import 'package:flutter/material.dart';

class NewCustomCertificateModel
    extends FlutterFlowModel<NewCustomCertificateWidget> {
  ///  Local state fields for this page.

  String currentHash = '123';

  ///  State fields for stateful widgets in this page.

  // Model for sidebar-expandido component.
  late SidebarExpandidoModel sidebarExpandidoModel1;
  // Model for sidebar-reduzido component.
  late SidebarReduzidoModel sidebarReduzidoModel;
  // State field(s) for telefone widget.
  FocusNode? telefoneFocusNode1;
  TextEditingController? telefoneTextController1;
  String? Function(BuildContext, String?)? telefoneTextController1Validator;
  // State field(s) for Resumo widget.
  FocusNode? resumoFocusNode1;
  TextEditingController? resumoTextController1;
  String? Function(BuildContext, String?)? resumoTextController1Validator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // Stores action output result for [Backend Call - API (Criar Sessao Checkout)] action in Button widget.
  ApiCallResponse? apiResultbji;
  // State field(s) for telefone widget.
  FocusNode? telefoneFocusNode2;
  TextEditingController? telefoneTextController2;
  String? Function(BuildContext, String?)? telefoneTextController2Validator;
  // State field(s) for Resumo widget.
  FocusNode? resumoFocusNode2;
  TextEditingController? resumoTextController2;
  String? Function(BuildContext, String?)? resumoTextController2Validator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // Stores action output result for [Backend Call - API (Criar Sessao Checkout)] action in Button widget.
  ApiCallResponse? apiResultbji2;
  // Model for sidebar-expandido component.
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
    telefoneFocusNode1?.dispose();
    telefoneTextController1?.dispose();

    resumoFocusNode1?.dispose();
    resumoTextController1?.dispose();

    telefoneFocusNode2?.dispose();
    telefoneTextController2?.dispose();

    resumoFocusNode2?.dispose();
    resumoTextController2?.dispose();

    sidebarExpandidoModel2.dispose();
  }
}
