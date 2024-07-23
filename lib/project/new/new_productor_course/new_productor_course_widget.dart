import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/project/sidebar_expandido/sidebar_expandido_widget.dart';
import '/project/sidebar_reduzido/sidebar_reduzido_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'new_productor_course_model.dart';
export 'new_productor_course_model.dart';

class NewProductorCourseWidget extends StatefulWidget {
  const NewProductorCourseWidget({super.key});

  @override
  State<NewProductorCourseWidget> createState() =>
      _NewProductorCourseWidgetState();
}

class _NewProductorCourseWidgetState extends State<NewProductorCourseWidget>
    with TickerProviderStateMixin {
  late NewProductorCourseModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewProductorCourseModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 800.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 800.0.ms,
            begin: const Offset(50.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });

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
        title: 'newProductorCourse',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
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
                        currentTab: 2,
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
                        currentTab: 2,
                      ),
                    ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: Container(
                                width: double.infinity,
                                constraints: const BoxConstraints(
                                  maxWidth: 1170.0,
                                ),
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 12.0, 12.0, 0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 1.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  0.0,
                                                  2.0,
                                                ),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      child: Icon(
                                                        Icons.home_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Meus cursos',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (responsiveVisibility(
                                                      context: context,
                                                      tablet: false,
                                                      tabletLandscape: false,
                                                      desktop: false,
                                                    ))
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          scaffoldKey
                                                              .currentState!
                                                              .openDrawer();
                                                        },
                                                        child: Icon(
                                                          Icons.menu_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 35.0,
                                                        ),
                                                      ),
                                                    if (responsiveVisibility(
                                                      context: context,
                                                      phone: false,
                                                    ))
                                                      Icon(
                                                        Icons
                                                            .lightbulb_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
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
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                          ),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 80.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Cursos',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Veja os cursos criados e acesse a página de detalhes!',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'containerOnPageLoadAnimation1']!),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<CursosRecord>>(
                                                    stream: queryCursosRecord(
                                                      queryBuilder:
                                                          (cursosRecord) =>
                                                              cursosRecord
                                                                  .where(
                                                        'productorId',
                                                        isEqualTo:
                                                            currentUserReference,
                                                      ),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child: SpinKitPulse(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 50.0,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<CursosRecord>
                                                          listViewCursosRecordList =
                                                          snapshot.data!;

                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            listViewCursosRecordList
                                                                .length,
                                                        itemBuilder: (context,
                                                            listViewIndex) {
                                                          final listViewCursosRecord =
                                                              listViewCursosRecordList[
                                                                  listViewIndex];
                                                          return Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        12.0,
                                                                        12.0,
                                                                        12.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                context
                                                                    .pushNamed(
                                                                  'CursoDetail',
                                                                  queryParameters:
                                                                      {
                                                                    'curso':
                                                                        serializeParam(
                                                                      listViewCursosRecord
                                                                          .reference,
                                                                      ParamType
                                                                          .DocumentReference,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 100.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  boxShadow: const [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          4.0,
                                                                      color: Color(
                                                                          0x230E151B),
                                                                      offset:
                                                                          Offset(
                                                                        0.0,
                                                                        2.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              const BorderRadius.only(
                                                                            bottomLeft:
                                                                                Radius.circular(12.0),
                                                                            bottomRight:
                                                                                Radius.circular(0.0),
                                                                            topLeft:
                                                                                Radius.circular(12.0),
                                                                            topRight:
                                                                                Radius.circular(0.0),
                                                                          ),
                                                                          child:
                                                                              Image.network(
                                                                            valueOrDefault<String>(
                                                                              listViewCursosRecord.photoURL,
                                                                              'https://mrconfeccoes.com.br/wp-content/uploads/2018/03/default.jpg',
                                                                            ),
                                                                            width:
                                                                                120.0,
                                                                            height:
                                                                                100.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(12.0, 6.0, 12.0, 6.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Flexible(
                                                                                    child: Text(
                                                                                      listViewCursosRecord.name,
                                                                                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                            fontFamily: 'Readex Pro',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    listViewCursosRecord.instructorName,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Readex Pro',
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'containerOnPageLoadAnimation2']!),
                                                          );
                                                        },
                                                      );
                                                    },
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
