import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/project/inside_logo/inside_logo_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'logo_certificado_model.dart';
export 'logo_certificado_model.dart';

class LogoCertificadoWidget extends StatefulWidget {
  const LogoCertificadoWidget({
    super.key,
    required this.template,
  });

  final TemplateRecord? template;

  @override
  State<LogoCertificadoWidget> createState() => _LogoCertificadoWidgetState();
}

class _LogoCertificadoWidgetState extends State<LogoCertificadoWidget> {
  late LogoCertificadoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogoCertificadoModel());

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
      width: 650.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: Text(
                      'Editar logo',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Poppins',
                                letterSpacing: 0.0,
                              ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                child: SizedBox(
                  width: 550.0,
                  height: 212.0,
                  child: custom_widgets.DashedContainer(
                    width: 550.0,
                    height: 212.0,
                    borderColor: const Color(0xFFD9D9D9),
                    borderWeight: 3.0,
                    borderRadius: 8.0,
                    borderSpacing: 15.0,
                    innerContainer: () => InsideLogoWidget(
                      template: widget.template!,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 12.0, 8.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      _model.refrashed2 = await TemplateRecord.getDocumentOnce(
                          widget.template!.reference);
                      if (_model.refrashed2?.logoPathTemp != '') {
                        _model.erro =
                            await actions.deleteFileFromFirebaseStorage(
                          _model.refrashed2?.logoPathTemp,
                        );
                        if (_model.refrashed2?.logoPath != '') {
                          await widget.template!.reference
                              .update(createTemplateRecordData(
                            hasLogo: true,
                            logoPathTemp: '',
                          ));
                        } else {
                          await widget.template!.reference
                              .update(createTemplateRecordData(
                            hasLogo: false,
                            logoPathTemp: '',
                          ));
                        }
                      }
                      Navigator.pop(context);

                      safeSetState(() {});
                    },
                    text: 'Descartar',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).alternate,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      _model.refrashed = await TemplateRecord.getDocumentOnce(
                          widget.template!.reference);
                      if (_model.refrashed?.logoPathTemp != '') {
                        await widget.template!.reference
                            .update(createTemplateRecordData(
                          logoPath: _model.refrashed?.logoPathTemp,
                          logoPathTemp: '',
                        ));
                      }
                      Navigator.pop(context);

                      safeSetState(() {});
                    },
                    text: 'Confirmar',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ].divide(const SizedBox(width: 12.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
