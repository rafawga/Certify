import '/backend/backend.dart';
import '/components/dashboard_container_w_subtext_widget.dart';
import '/components/dashboard_container_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/project/sidebar_expandido/sidebar_expandido_widget.dart';
import '/project/sidebar_reduzido/sidebar_reduzido_widget.dart';
import 'dashboard_new_widget.dart' show DashboardNewWidget;
import 'package:flutter/material.dart';

class DashboardNewModel extends FlutterFlowModel<DashboardNewWidget> {
  ///  Local state fields for this page.

  int? qntMesAtual = 0;

  int? qntMesAnterior;

  int? crescimento = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in DashboardNew widget.
  CursosRecord? maxValueQuantity;
  // Model for sidebar-expandido component.
  late SidebarExpandidoModel sidebarExpandidoModel1;
  // Model for sidebar-reduzido component.
  late SidebarReduzidoModel sidebarReduzidoModel;
  // Model for DashboardContainer component.
  late DashboardContainerModel dashboardContainerModel1;
  // Model for DashboardContainer component.
  late DashboardContainerModel dashboardContainerModel2;
  // Model for DashboardContainerWSubtext component.
  late DashboardContainerWSubtextModel dashboardContainerWSubtextModel1;
  // Model for DashboardContainerWSubtext component.
  late DashboardContainerWSubtextModel dashboardContainerWSubtextModel2;
  // Model for sidebar-expandido component.
  late SidebarExpandidoModel sidebarExpandidoModel2;

  @override
  void initState(BuildContext context) {
    sidebarExpandidoModel1 =
        createModel(context, () => SidebarExpandidoModel());
    sidebarReduzidoModel = createModel(context, () => SidebarReduzidoModel());
    dashboardContainerModel1 =
        createModel(context, () => DashboardContainerModel());
    dashboardContainerModel2 =
        createModel(context, () => DashboardContainerModel());
    dashboardContainerWSubtextModel1 =
        createModel(context, () => DashboardContainerWSubtextModel());
    dashboardContainerWSubtextModel2 =
        createModel(context, () => DashboardContainerWSubtextModel());
    sidebarExpandidoModel2 =
        createModel(context, () => SidebarExpandidoModel());
  }

  @override
  void dispose() {
    sidebarExpandidoModel1.dispose();
    sidebarReduzidoModel.dispose();
    dashboardContainerModel1.dispose();
    dashboardContainerModel2.dispose();
    dashboardContainerWSubtextModel1.dispose();
    dashboardContainerWSubtextModel2.dispose();
    sidebarExpandidoModel2.dispose();
  }
}
