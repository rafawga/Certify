import '/flutter_flow/flutter_flow_util.dart';
import 'inside_logo_widget.dart' show InsideLogoWidget;
import 'package:flutter/material.dart';

class InsideLogoModel extends FlutterFlowModel<InsideLogoWidget> {
  ///  Local state fields for this component.

  bool changePhoto = false;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
