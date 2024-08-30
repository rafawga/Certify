import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/project/components/confirmar_cancelamento/confirmar_cancelamento_widget.dart';
import '/project/sidebar_expandido/sidebar_expandido_widget.dart';
import '/project/sidebar_reduzido/sidebar_reduzido_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'new_plans_copy2_model.dart';
export 'new_plans_copy2_model.dart';

class NewPlansCopy2Widget extends StatefulWidget {
  const NewPlansCopy2Widget({super.key});

  @override
  State<NewPlansCopy2Widget> createState() => _NewPlansCopy2WidgetState();
}

class _NewPlansCopy2WidgetState extends State<NewPlansCopy2Widget> {
  late NewPlansCopy2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewPlansCopy2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'NewPlansCopy2',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            drawer: SizedBox(
              width: 300.0,
              child: Drawer(
                elevation: 16.0,
                child: wrapWithModel(
                  model: _model.sidebarExpandidoModel2,
                  updateCallback: () => setState(() {}),
                  child: const SidebarExpandidoWidget(
                    currentTab: 1,
                  ),
                ),
              ),
            ),
            body: SafeArea(
              top: true,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (FFAppState().navOpen &&
                      responsiveVisibility(
                        context: context,
                        phone: false,
                      ))
                    wrapWithModel(
                      model: _model.sidebarExpandidoModel1,
                      updateCallback: () => setState(() {}),
                      child: const SidebarExpandidoWidget(
                        currentTab: 9,
                      ),
                    ),
                  if (!FFAppState().navOpen &&
                      responsiveVisibility(
                        context: context,
                        phone: false,
                      ))
                    wrapWithModel(
                      model: _model.sidebarReduzidoModel,
                      updateCallback: () => setState(() {}),
                      child: const SidebarReduzidoWidget(
                        currentTab: 9,
                      ),
                    ),
                  Builder(
                    builder: (context) => FFButtonWidget(
                      onPressed: () async {
                        await showDialog(
                          context: context,
                          builder: (dialogContext) {
                            return Dialog(
                              elevation: 0,
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              alignment: const AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              child: GestureDetector(
                                onTap: () =>
                                    FocusScope.of(dialogContext).unfocus(),
                                child: const ConfirmarCancelamentoWidget(),
                              ),
                            );
                          },
                        );
                      },
                      text: 'Cancelar assinatura',
                      options: FFButtonOptions(
                        width: 180.0,
                        height: 50.0,
                        padding: const EdgeInsets.all(3.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).error,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        elevation: 2.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
