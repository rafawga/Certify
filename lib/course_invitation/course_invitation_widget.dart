import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'course_invitation_model.dart';
export 'course_invitation_model.dart';

class CourseInvitationWidget extends StatefulWidget {
  const CourseInvitationWidget({
    super.key,
    required this.invitetionCode,
  });

  final DocumentReference? invitetionCode;

  @override
  State<CourseInvitationWidget> createState() => _CourseInvitationWidgetState();
}

class _CourseInvitationWidgetState extends State<CourseInvitationWidget> {
  late CourseInvitationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CourseInvitationModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (loggedIn) {
        unawaited(
          () async {
            _model.alreadyExist = await queryAlunosCursoRecordOnce(
              queryBuilder: (alunosCursoRecord) => alunosCursoRecord
                  .where(
                    'cursoID',
                    isEqualTo: widget.invitetionCode,
                  )
                  .where(
                    'alunoUser',
                    isEqualTo: currentUserReference,
                  ),
              singleRecord: true,
            ).then((s) => s.firstOrNull);
          }(),
        );
        _model.qntdAlunos = await queryAlunosCursoRecordCount(
          queryBuilder: (alunosCursoRecord) => alunosCursoRecord.where(
            'cursoID',
            isEqualTo: widget.invitetionCode,
          ),
        );
        _model.curso =
            await CursosRecord.getDocumentOnce(widget.invitetionCode!);
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<CursosRecord>(
      stream: CursosRecord.getDocument(widget.invitetionCode!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitPulse(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }

        final courseInvitationCursosRecord = snapshot.data!;

        return Title(
            title: 'CourseInvitation',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                body: SafeArea(
                  top: true,
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              constraints: const BoxConstraints(
                                maxWidth: 1170.0,
                              ),
                              decoration: const BoxDecoration(),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 20.0, 20.0, 20.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 29.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 12.0,
                                                                12.0, 25.0),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            blurRadius: 1.0,
                                                            color: Color(
                                                                0x33000000),
                                                            offset: Offset(
                                                              0.0,
                                                              2.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Flexible(
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                    child: Icon(
                                                                      Icons
                                                                          .space_dashboard_sharp,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                  Flexible(
                                                                    child: Text(
                                                                      'Área do usuário / Convite de curso',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                if (responsiveVisibility(
                                                                  context:
                                                                      context,
                                                                  tablet: false,
                                                                  tabletLandscape:
                                                                      false,
                                                                  desktop:
                                                                      false,
                                                                ))
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      scaffoldKey
                                                                          .currentState!
                                                                          .openDrawer();
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .menu_outlined,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          35.0,
                                                                    ),
                                                                  ),
                                                                if (responsiveVisibility(
                                                                  context:
                                                                      context,
                                                                  phone: false,
                                                                ))
                                                                  Icon(
                                                                    Icons
                                                                        .lightbulb_outlined,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Text(
                                                          'Deseja aceitar o convite de ${courseInvitationCursosRecord.instructorName} para entrar em \" ${courseInvitationCursosRecord.name}\" ?',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Plus Jakarta Sans',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 36.0,
                                                          ),
                                                        ),
                                                      ),
                                                      Flexible(
                                                        child: Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  -1.0, -1.0),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        30.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                                  child:
                                                                      FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      if ((_model.alreadyExist !=
                                                                              null) ==
                                                                          false) {
                                                                        if ((_model.qntdAlunos! >=
                                                                                courseInvitationCursosRecord.usersLimit) &&
                                                                            courseInvitationCursosRecord.hasUserLimit) {
                                                                          ScaffoldMessenger.of(context)
                                                                              .showSnackBar(
                                                                            SnackBar(
                                                                              content: Text(
                                                                                'Este curso já atingiu o limite de usuários definidos pelo produtor! Entre em contato com o mesmo.',
                                                                                style: TextStyle(
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                ),
                                                                              ),
                                                                              duration: const Duration(milliseconds: 3000),
                                                                              backgroundColor: FlutterFlowTheme.of(context).warning,
                                                                            ),
                                                                          );
                                                                        } else {
                                                                          _model.generetedHash =
                                                                              await actions.gerarHash(
                                                                            currentUserReference?.id,
                                                                            widget.invitetionCode?.id,
                                                                          );

                                                                          await AlunosCursoRecord
                                                                              .collection
                                                                              .doc()
                                                                              .set({
                                                                            ...createAlunosCursoRecordData(
                                                                              cursoID: widget.invitetionCode,
                                                                              isDone: true,
                                                                              alunoUser: currentUserReference,
                                                                              hash: _model.generetedHash,
                                                                              isValid: true,
                                                                              professorID: courseInvitationCursosRecord.productorId,
                                                                            ),
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'dataInscricao': FieldValue.serverTimestamp(),
                                                                                'dataModificacao': FieldValue.serverTimestamp(),
                                                                              },
                                                                            ),
                                                                          });

                                                                          await widget
                                                                              .invitetionCode!
                                                                              .update({
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'UserList': FieldValue.arrayUnion([
                                                                                  currentUserReference
                                                                                ]),
                                                                              },
                                                                            ),
                                                                          });
                                                                          _model.productor =
                                                                              await queryUsersRecordOnce(
                                                                            queryBuilder: (usersRecord) =>
                                                                                usersRecord.where(
                                                                              'uid',
                                                                              isEqualTo: valueOrDefault<String>(
                                                                                courseInvitationCursosRecord.productorId?.id,
                                                                                'Productor',
                                                                              ),
                                                                            ),
                                                                            singleRecord:
                                                                                true,
                                                                          ).then((s) => s.firstOrNull);

                                                                          await _model
                                                                              .productor!
                                                                              .reference
                                                                              .update({
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'AlunosQnt': FieldValue.increment(1),
                                                                              },
                                                                            ),
                                                                          });

                                                                          context
                                                                              .pushNamed('newUserCourses');

                                                                          ScaffoldMessenger.of(context)
                                                                              .showSnackBar(
                                                                            SnackBar(
                                                                              content: Text(
                                                                                'Você foi adicionado (a) ao curso com sucesso',
                                                                                style: TextStyle(
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                ),
                                                                              ),
                                                                              duration: const Duration(milliseconds: 3000),
                                                                              backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                            ),
                                                                          );
                                                                        }
                                                                      } else {
                                                                        if (_model.alreadyExist?.isValid ==
                                                                            false) {
                                                                          ScaffoldMessenger.of(context)
                                                                              .showSnackBar(
                                                                            SnackBar(
                                                                              content: Text(
                                                                                'Você foi removido deste curso pelo produtor.',
                                                                                style: TextStyle(
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                ),
                                                                              ),
                                                                              duration: const Duration(milliseconds: 3000),
                                                                              backgroundColor: FlutterFlowTheme.of(context).warning,
                                                                            ),
                                                                          );
                                                                        } else {
                                                                          ScaffoldMessenger.of(context)
                                                                              .showSnackBar(
                                                                            SnackBar(
                                                                              content: Text(
                                                                                'Você já esta registrado (a) neste curso',
                                                                                style: TextStyle(
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                ),
                                                                              ),
                                                                              duration: const Duration(milliseconds: 3000),
                                                                              backgroundColor: FlutterFlowTheme.of(context).warning,
                                                                            ),
                                                                          );
                                                                        }

                                                                        context.pushNamed(
                                                                            'newUserCourses');
                                                                      }

                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    text:
                                                                        'Aceitar',
                                                                    options:
                                                                        FFButtonOptions(
                                                                      height:
                                                                          40.0,
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                      iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .success,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                Colors.white,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      elevation:
                                                                          3.0,
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Colors
                                                                            .transparent,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                  ),
                                                                ),
                                                                FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    context
                                                                        .safePop();
                                                                  },
                                                                  text:
                                                                      'Rejeitar',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        40.0,
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              Colors.white,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    elevation:
                                                                        3.0,
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
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
            ));
      },
    );
  }
}
