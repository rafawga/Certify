import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/project/components/card_cursos/card_cursos_widget.dart';
import '/project/components/navibar/navibar_widget.dart';
import 'productor_view_curses_widget.dart' show ProductorViewCursesWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductorViewCursesModel
    extends FlutterFlowModel<ProductorViewCursesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Navibar component.
  late NavibarModel navibarModel;
  // Model for CardCursos component.
  late CardCursosModel cardCursosModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navibarModel = createModel(context, () => NavibarModel());
    cardCursosModel = createModel(context, () => CardCursosModel());
  }

  void dispose() {
    unfocusNode.dispose();
    navibarModel.dispose();
    cardCursosModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
