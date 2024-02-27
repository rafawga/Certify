import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/project/components/navbar/navbar_widget.dart';
import 'new_template_widget.dart' show NewTemplateWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewTemplateModel extends FlutterFlowModel<NewTemplateWidget> {
  ///  Local state fields for this page.

  int? mode = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Navbar component.
  late NavbarModel navbarModel;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for Certificado widget.
  FocusNode? certificadoFocusNode1;
  TextEditingController? certificadoController1;
  String? Function(BuildContext, String?)? certificadoController1Validator;
  // State field(s) for CertificadoFonte widget.
  FocusNode? certificadoFonteFocusNode1;
  TextEditingController? certificadoFonteController1;
  String? Function(BuildContext, String?)? certificadoFonteController1Validator;
  Color? colorPicked1;
  // State field(s) for Certificado widget.
  FocusNode? certificadoFocusNode2;
  TextEditingController? certificadoController2;
  String? Function(BuildContext, String?)? certificadoController2Validator;
  // State field(s) for CertificadoFonte widget.
  FocusNode? certificadoFonteFocusNode2;
  TextEditingController? certificadoFonteController2;
  String? Function(BuildContext, String?)? certificadoFonteController2Validator;
  Color? colorPicked2;
  // State field(s) for Certificado widget.
  FocusNode? certificadoFocusNode3;
  TextEditingController? certificadoController3;
  String? Function(BuildContext, String?)? certificadoController3Validator;
  // State field(s) for CertificadoFonte widget.
  FocusNode? certificadoFonteFocusNode3;
  TextEditingController? certificadoFonteController3;
  String? Function(BuildContext, String?)? certificadoFonteController3Validator;
  Color? colorPicked3;
  // State field(s) for Certificado widget.
  FocusNode? certificadoFocusNode4;
  TextEditingController? certificadoController4;
  String? Function(BuildContext, String?)? certificadoController4Validator;
  // State field(s) for CertificadoFonte widget.
  FocusNode? certificadoFonteFocusNode4;
  TextEditingController? certificadoFonteController4;
  String? Function(BuildContext, String?)? certificadoFonteController4Validator;
  Color? colorPicked4;
  // State field(s) for Certificado widget.
  FocusNode? certificadoFocusNode5;
  TextEditingController? certificadoController5;
  String? Function(BuildContext, String?)? certificadoController5Validator;
  // State field(s) for CertificadoFonte widget.
  FocusNode? certificadoFonteFocusNode5;
  TextEditingController? certificadoFonteController5;
  String? Function(BuildContext, String?)? certificadoFonteController5Validator;
  Color? colorPicked5;
  // State field(s) for Certificado widget.
  FocusNode? certificadoFocusNode6;
  TextEditingController? certificadoController6;
  String? Function(BuildContext, String?)? certificadoController6Validator;
  // State field(s) for CertificadoFonte widget.
  FocusNode? certificadoFonteFocusNode6;
  TextEditingController? certificadoFonteController6;
  String? Function(BuildContext, String?)? certificadoFonteController6Validator;
  Color? colorPicked6;
  // State field(s) for Certificado widget.
  FocusNode? certificadoFocusNode7;
  TextEditingController? certificadoController7;
  String? Function(BuildContext, String?)? certificadoController7Validator;
  // State field(s) for CertificadoFonte widget.
  FocusNode? certificadoFonteFocusNode7;
  TextEditingController? certificadoFonteController7;
  String? Function(BuildContext, String?)? certificadoFonteController7Validator;
  Color? colorPicked7;
  // State field(s) for Certificado widget.
  FocusNode? certificadoFocusNode8;
  TextEditingController? certificadoController8;
  String? Function(BuildContext, String?)? certificadoController8Validator;
  // State field(s) for CertificadoFonte widget.
  FocusNode? certificadoFonteFocusNode8;
  TextEditingController? certificadoFonteController8;
  String? Function(BuildContext, String?)? certificadoFonteController8Validator;
  Color? colorPicked8;
  // State field(s) for Certificado widget.
  FocusNode? certificadoFocusNode9;
  TextEditingController? certificadoController9;
  String? Function(BuildContext, String?)? certificadoController9Validator;
  // State field(s) for CertificadoFonte widget.
  FocusNode? certificadoFonteFocusNode9;
  TextEditingController? certificadoFonteController9;
  String? Function(BuildContext, String?)? certificadoFonteController9Validator;
  Color? colorPicked9;
  // State field(s) for Certificado widget.
  FocusNode? certificadoFocusNode10;
  TextEditingController? certificadoController10;
  String? Function(BuildContext, String?)? certificadoController10Validator;
  // State field(s) for CertificadoFonte widget.
  FocusNode? certificadoFonteFocusNode10;
  TextEditingController? certificadoFonteController10;
  String? Function(BuildContext, String?)?
      certificadoFonteController10Validator;
  Color? colorPicked10;
  // State field(s) for Certificado widget.
  FocusNode? certificadoFocusNode11;
  TextEditingController? certificadoController11;
  String? Function(BuildContext, String?)? certificadoController11Validator;
  // State field(s) for CertificadoFonte widget.
  FocusNode? certificadoFonteFocusNode11;
  TextEditingController? certificadoFonteController11;
  String? Function(BuildContext, String?)?
      certificadoFonteController11Validator;
  Color? colorPicked11;

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

    certificadoFonteFocusNode1?.dispose();
    certificadoFonteController1?.dispose();

    certificadoFocusNode2?.dispose();
    certificadoController2?.dispose();

    certificadoFonteFocusNode2?.dispose();
    certificadoFonteController2?.dispose();

    certificadoFocusNode3?.dispose();
    certificadoController3?.dispose();

    certificadoFonteFocusNode3?.dispose();
    certificadoFonteController3?.dispose();

    certificadoFocusNode4?.dispose();
    certificadoController4?.dispose();

    certificadoFonteFocusNode4?.dispose();
    certificadoFonteController4?.dispose();

    certificadoFocusNode5?.dispose();
    certificadoController5?.dispose();

    certificadoFonteFocusNode5?.dispose();
    certificadoFonteController5?.dispose();

    certificadoFocusNode6?.dispose();
    certificadoController6?.dispose();

    certificadoFonteFocusNode6?.dispose();
    certificadoFonteController6?.dispose();

    certificadoFocusNode7?.dispose();
    certificadoController7?.dispose();

    certificadoFonteFocusNode7?.dispose();
    certificadoFonteController7?.dispose();

    certificadoFocusNode8?.dispose();
    certificadoController8?.dispose();

    certificadoFonteFocusNode8?.dispose();
    certificadoFonteController8?.dispose();

    certificadoFocusNode9?.dispose();
    certificadoController9?.dispose();

    certificadoFonteFocusNode9?.dispose();
    certificadoFonteController9?.dispose();

    certificadoFocusNode10?.dispose();
    certificadoController10?.dispose();

    certificadoFonteFocusNode10?.dispose();
    certificadoFonteController10?.dispose();

    certificadoFocusNode11?.dispose();
    certificadoController11?.dispose();

    certificadoFonteFocusNode11?.dispose();
    certificadoFonteController11?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
