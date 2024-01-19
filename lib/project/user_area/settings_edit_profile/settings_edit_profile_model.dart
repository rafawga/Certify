import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/project/components/cancelar_assinatura/cancelar_assinatura_widget.dart';
import '/project/components/navbar/navbar_widget.dart';
import 'settings_edit_profile_widget.dart' show SettingsEditProfileWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingsEditProfileModel
    extends FlutterFlowModel<SettingsEditProfileWidget> {
  ///  Local state fields for this page.

  bool photoChanged = false;

  ///  State fields for stateful widgets in this page.

  // Model for Navbar component.
  late NavbarModel navbarModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode1;
  TextEditingController? yourNameController1;
  String? Function(BuildContext, String?)? yourNameController1Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode2;
  TextEditingController? yourNameController2;
  String? Function(BuildContext, String?)? yourNameController2Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode3;
  TextEditingController? yourNameController3;
  String? Function(BuildContext, String?)? yourNameController3Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  void dispose() {
    navbarModel.dispose();
    yourNameFocusNode1?.dispose();
    yourNameController1?.dispose();

    yourNameFocusNode2?.dispose();
    yourNameController2?.dispose();

    yourNameFocusNode3?.dispose();
    yourNameController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
