import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/project/sidebar_expandido/sidebar_expandido_widget.dart';
import '/project/sidebar_reduzido/sidebar_reduzido_widget.dart';
import 'new_plans_widget.dart' show NewPlansWidget;
import 'package:flutter/material.dart';

class NewPlansModel extends FlutterFlowModel<NewPlansWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SidebarExpandido component.
  late SidebarExpandidoModel sidebarExpandidoModel1;
  // Model for SidebarReduzido component.
  late SidebarReduzidoModel sidebarReduzidoModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // Stores action output result for [Backend Call - API (Criar Sessao Checkout)] action in Button widget.
  ApiCallResponse? apiResultBasicMonthly;
  // Stores action output result for [Backend Call - API (Criar Sessao Checkout)] action in Button widget.
  ApiCallResponse? apiResultGrowthMonthly;
  // Stores action output result for [Backend Call - API (Criar Sessao Checkout)] action in Button widget.
  ApiCallResponse? apiResultUnlimitedMonthly;
  // Stores action output result for [Backend Call - API (Criar Sessao Checkout)] action in Button widget.
  ApiCallResponse? apiResultBasicYearly;
  // Stores action output result for [Backend Call - API (Criar Sessao Checkout)] action in Button widget.
  ApiCallResponse? apiResultGrowthYearly;
  // Stores action output result for [Backend Call - API (Criar Sessao Checkout)] action in Button widget.
  ApiCallResponse? apiResultUnlimitedYearly;
  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // Stores action output result for [Backend Call - API (Criar Sessao Checkout)] action in Button widget.
  ApiCallResponse? apiResultBasicMonthlyPhone;
  // Stores action output result for [Backend Call - API (Criar Sessao Checkout)] action in Button widget.
  ApiCallResponse? apiResultGrowthMonthlyPhone;
  // Stores action output result for [Backend Call - API (Criar Sessao Checkout)] action in Button widget.
  ApiCallResponse? apiResultUnlimitedMonthlyPhone;
  // Stores action output result for [Backend Call - API (Criar Sessao Checkout)] action in Button widget.
  ApiCallResponse? apiResultBasicYearlyPhone;
  // Stores action output result for [Backend Call - API (Criar Sessao Checkout)] action in Button widget.
  ApiCallResponse? apiResultGrowthYearlyPhone;
  // Stores action output result for [Backend Call - API (Criar Sessao Checkout)] action in Button widget.
  ApiCallResponse? apiResultUnlimitedYearlyPhone;
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
    tabBarController1?.dispose();
    tabBarController2?.dispose();
    sidebarExpandidoModel2.dispose();
  }
}
