import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'dashboard_container_w_subtext_model.dart';
export 'dashboard_container_w_subtext_model.dart';

class DashboardContainerWSubtextWidget extends StatefulWidget {
  const DashboardContainerWSubtextWidget({
    super.key,
    String? titleText,
    String? mainText,
    required this.subText,
  })  : titleText = titleText ?? 'default value',
        mainText = mainText ?? 'dafault value';

  final String titleText;
  final String mainText;
  final String? subText;

  @override
  State<DashboardContainerWSubtextWidget> createState() =>
      _DashboardContainerWSubtextWidgetState();
}

class _DashboardContainerWSubtextWidgetState
    extends State<DashboardContainerWSubtextWidget> {
  late DashboardContainerWSubtextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardContainerWSubtextModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              valueOrDefault<String>(
                widget.titleText,
                'Certificados gerados neste mês',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                  ),
            ),
            Text(
              valueOrDefault<String>(
                widget.subText,
                'aumento de 15% em relação ao mês passado',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 10.0,
                    letterSpacing: 0.0,
                  ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.mainText,
                    '280',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 112.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
