import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'inside_logo_model.dart';
export 'inside_logo_model.dart';

class InsideLogoWidget extends StatefulWidget {
  const InsideLogoWidget({
    super.key,
    required this.template,
  });

  final TemplateRecord? template;

  @override
  State<InsideLogoWidget> createState() => _InsideLogoWidgetState();
}

class _InsideLogoWidgetState extends State<InsideLogoWidget> {
  late InsideLogoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InsideLogoModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.changePhoto = false;
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DragTarget<FFUploadedFile>(
      builder: (context, _, __) {
        return InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            final selectedMedia = await selectMedia(
              mediaSource: MediaSource.photoGallery,
              multiImage: false,
            );
            if (selectedMedia != null &&
                selectedMedia
                    .every((m) => validateFileFormat(m.storagePath, context))) {
              safeSetState(() => _model.isDataUploading = true);
              var selectedUploadedFiles = <FFUploadedFile>[];

              var downloadUrls = <String>[];
              try {
                selectedUploadedFiles = selectedMedia
                    .map((m) => FFUploadedFile(
                          name: m.storagePath.split('/').last,
                          bytes: m.bytes,
                          height: m.dimensions?.height,
                          width: m.dimensions?.width,
                          blurHash: m.blurHash,
                        ))
                    .toList();

                downloadUrls = (await Future.wait(
                  selectedMedia.map(
                    (m) async => await uploadData(m.storagePath, m.bytes),
                  ),
                ))
                    .where((u) => u != null)
                    .map((u) => u!)
                    .toList();
              } finally {
                _model.isDataUploading = false;
              }
              if (selectedUploadedFiles.length == selectedMedia.length &&
                  downloadUrls.length == selectedMedia.length) {
                safeSetState(() {
                  _model.uploadedLocalFile = selectedUploadedFiles.first;
                  _model.uploadedFileUrl = downloadUrls.first;
                });
              } else {
                safeSetState(() {});
                return;
              }
            }

            await widget.template!.reference.update(createTemplateRecordData(
              hasLogo: true,
              logoPathTemp: _model.uploadedFileUrl,
            ));
            _model.changePhoto = true;
            safeSetState(() {});
          },
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if ((widget.template?.hasLogo == false) &&
                  (_model.changePhoto == false))
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/Vector.png',
                          width: 90.0,
                          height: 68.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              if (_model.changePhoto)
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          _model.uploadedFileUrl,
                          height: 68.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              if (widget.template!.hasLogo && !_model.changePhoto)
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          widget.template!.logoPath,
                          height: 68.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Altere a',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Poppins',
                                letterSpacing: 0.0,
                              ),
                        ),
                        TextSpan(
                          text: ' imagem',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).primary,
                                letterSpacing: 0.0,
                              ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Formatos suportados: JPEG, PNG - Tamanho máximo: 20mb',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 10.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
