import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/project/sidebar_expandido/sidebar_expandido_widget.dart';
import '/project/sidebar_reduzido/sidebar_reduzido_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'template_config_widget.dart' show TemplateConfigWidget;
import 'package:flutter/material.dart';

class TemplateConfigModel extends FlutterFlowModel<TemplateConfigWidget> {
  ///  Local state fields for this page.

  bool changeColor = false;

  ///  State fields for stateful widgets in this page.

  // Model for sidebar-expandido component.
  late SidebarExpandidoModel sidebarExpandidoModel1;
  // Model for sidebar-reduzido component.
  late SidebarReduzidoModel sidebarReduzidoModel;
  // State field(s) for NamePC widget.
  FocusNode? namePCFocusNode1;
  TextEditingController? namePCTextController1;
  String? Function(BuildContext, String?)? namePCTextController1Validator;
  Color? colorPicked1;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController1;
  int carouselCurrentIndex1 = 0;

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  TemplateImagesRecord? imagemSelecionada2;
  // Stores action output result for [Custom Action - gerarPDFwithSVG] action in Button widget.
  String? pdfReturn2;
  // State field(s) for NamePC widget.
  FocusNode? namePCFocusNode2;
  TextEditingController? namePCTextController2;
  String? Function(BuildContext, String?)? namePCTextController2Validator;
  Color? colorPicked2;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController2;
  int carouselCurrentIndex2 = 0;

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  TemplateImagesRecord? imagemSelecionada;
  // Stores action output result for [Custom Action - gerarPDFwithSVG] action in Button widget.
  String? pdfReturn;
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
    namePCFocusNode1?.dispose();
    namePCTextController1?.dispose();

    namePCFocusNode2?.dispose();
    namePCTextController2?.dispose();

    sidebarExpandidoModel2.dispose();
  }
}
