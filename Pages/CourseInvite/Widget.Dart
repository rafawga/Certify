import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/project/components/navbar/navbar_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'course_invitation_model.dart';
export 'course_invitation_model.dart';

class CourseInvitationWidget extends StatefulWidget {
  const CourseInvitationWidget({
    Key? key,
    required this.cursoID,
  }) : super(key: key);

  final DocumentReference? cursoID;

  @override
  _CourseInvitationWidgetState createState() => _CourseInvitationWidgetState();
}

class _CourseInvitationWidgetState extends State<CourseInvitationWidget> {
  late CourseInvitationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CourseInvitationModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return StreamBuilder<CursosRecord>(
      stream: CursosRecord.getDocument(widget.cursoID!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final courseInvitationCursosRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Align(
                alignment: AlignmentDirectional(0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.navbarModel,
                      updateCallback: () => setState(() {}),
                      child: NavbarWidget(
                        tabAtual: 2,
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Container(
                          width: double.infinity,
                          constraints: BoxConstraints(
                            maxWidth: 1170,
                          ),
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 100, 20, 20),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Text(
                                    'Deseja aceitar o convite de ${courseInvitationCursosRecord.instructorName} para entrar em \" ${courseInvitationCursosRecord.name}\" ?',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.getFont(
                                      'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 36,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 30, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 20, 0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            await AlunosCursoRecord.collection
                                                .doc()
                                                .set({
                                              ...createAlunosCursoRecordData(
                                                cursoID: widget.cursoID,
                                                isDone: true,
                                                alunoUser: currentUserReference,
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'dataInscricao': FieldValue
                                                      .serverTimestamp(),
                                                  'dataModificacao': FieldValue
                                                      .serverTimestamp(),
                                                },
                                              ),
                                            });
                                          },
                                          text: 'Aceitar',
                                          options: FFButtonOptions(
                                            height: 40,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24, 0, 24, 0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 0),
                                            color: FlutterFlowTheme.of(context)
                                                .success,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Colors.white,
                                                    ),
                                            elevation: 3,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () async {
                                          context.safePop();
                                        },
                                        text: 'Rejeitar',
                                        options: FFButtonOptions(
                                          height: 40,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24, 0, 24, 0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 0),
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                  ),
                                          elevation: 3,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
