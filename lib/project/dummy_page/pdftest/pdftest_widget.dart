import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'pdftest_model.dart';
export 'pdftest_model.dart';

class PdftestWidget extends StatefulWidget {
  const PdftestWidget({super.key});

  @override
  State<PdftestWidget> createState() => _PdftestWidgetState();
}

class _PdftestWidgetState extends State<PdftestWidget> {
  late PdftestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PdftestModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'pdftest',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SelectionArea(
                      child: Text(
                    valueOrDefault<String>(
                      _model.outp,
                      'test',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Dancing Script',
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  )),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      final colorPickedColor = await showFFColorPicker(
                        context,
                        currentColor: _model.colorPicked ??=
                            valueOrDefault<Color>(
                          _model.colorPicked,
                          FlutterFlowTheme.of(context).primaryText,
                        ),
                        showRecentColors: true,
                        allowOpacity: true,
                        textColor: FlutterFlowTheme.of(context).primaryText,
                        secondaryTextColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        backgroundColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        primaryButtonBackgroundColor:
                            FlutterFlowTheme.of(context).primary,
                        primaryButtonTextColor: Colors.white,
                        primaryButtonBorderColor: Colors.transparent,
                        displayAsBottomSheet: isMobileWidth(context),
                      );

                      if (colorPickedColor != null) {
                        safeSetState(
                            () => _model.colorPicked = colorPickedColor);
                      }
                    },
                    child: Container(
                      width: 25.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                        color: _model.colorPicked,
                        borderRadius: BorderRadius.circular(2.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      _model.outp = await actions.gerarPDFwithSVG(
                        'https://firebasestorage.googleapis.com/v0/b/certify-br.appspot.com/o/users%2F61zV42pDdkhn0Aa2tTHMwHyKHwC3%2Fuploads%2F1727117370467000.svg?alt=media&token=9d66ae3b-8ca1-4ab8-ae72-a4cb2cb2cc47',
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            _model.outp!,
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: const Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                        ),
                      );

                      safeSetState(() {});
                    },
                    text: 'Button',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      await actions.gerarPDFwithSVG(
                        'https://firebasestorage.googleapis.com/v0/b/certify-br.appspot.com/o/users%2F61zV42pDdkhn0Aa2tTHMwHyKHwC3%2Fuploads%2F1727094534404000.svg?alt=media&token=e4346edf-cc48-42b9-b444-9a271f1d5276',
                      );
                    },
                    text: 'Button',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
