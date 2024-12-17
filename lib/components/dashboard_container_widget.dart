import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'dashboard_container_model.dart';
export 'dashboard_container_model.dart';

class DashboardContainerWidget extends StatefulWidget {
  const DashboardContainerWidget({
    super.key,
    String? titleText,
    String? mainText,
    required this.icon,
    required this.marginSpace,
  })  : titleText = titleText ?? 'default value',
        mainText = mainText ?? 'dafault value';

  final String titleText;
  final String mainText;
  final Widget? icon;
  final int? marginSpace;

  @override
  State<DashboardContainerWidget> createState() =>
      _DashboardContainerWidgetState();
}

class _DashboardContainerWidgetState extends State<DashboardContainerWidget> {
  late DashboardContainerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardContainerModel());

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
      height: 500.0,
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: widget.icon!,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.titleText,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                widget.mainText,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).primary,
                      fontSize: 52.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
        ].divide(SizedBox(
            width: valueOrDefault<double>(
          widget.marginSpace?.toDouble(),
          20.0,
        ))),
      ),
    );
  }
}
