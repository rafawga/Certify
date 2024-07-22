import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/project/components/user_pop_up/user_pop_up_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'curso_detail_model.dart';
export 'curso_detail_model.dart';

class CursoDetailWidget extends StatefulWidget {
  const CursoDetailWidget({
    super.key,
    required this.curso,
    int? tab,
  }) : tab = tab ?? 0;

  final DocumentReference? curso;
  final int tab;

  @override
  State<CursoDetailWidget> createState() => _CursoDetailWidgetState();
}

class _CursoDetailWidgetState extends State<CursoDetailWidget>
    with TickerProviderStateMixin {
  late CursoDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CursoDetailModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: min(
          valueOrDefault<int>(
            widget.tab,
            0,
          ),
          2),
    )..addListener(() => setState(() {}));

    _model.nameFocusNode ??= FocusNode();

    _model.descriptionFocusNode ??= FocusNode();

    _model.professorFocusNode ??= FocusNode();

    _model.duracaoFocusNode ??= FocusNode();

    _model.limiteUsersFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 500.0.ms,
            begin: const Offset(50.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 500.0.ms,
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
    return StreamBuilder<CursosRecord>(
      stream: CursosRecord.getDocument(widget.curso!),
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

        final cursoDetailCursosRecord = snapshot.data!;

        return Title(
            title: 'CursoDetail',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: GestureDetector(
              onTap: () => _model.unfocusNode.canRequestFocus
                  ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                  : FocusScope.of(context).unfocus(),
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
                        wrapWithModel(
                          model: _model.navbarModel,
                          updateCallback: () => setState(() {}),
                          child: const NavbarWidget(
                            tabAtual: 1,
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 2.0),
                              child: Container(
                                width: double.infinity,
                                constraints: const BoxConstraints(
                                  maxWidth: 1170.0,
                                ),
                                decoration: const BoxDecoration(),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: const Alignment(0.0, 0),
                                        child: TabBar(
                                          labelColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          unselectedLabelColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          unselectedLabelStyle: const TextStyle(),
                                          indicatorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          padding: const EdgeInsets.all(4.0),
                                          tabs: [
                                            Tab(
                                              text: MediaQuery.sizeOf(context)
                                                          .width <
                                                      FFAppConstants
                                                              .WidthMinToViewNavBar
                                                          .toDouble()
                                                  ? 'Info Curso'
                                                  : 'Informações do Curso',
                                            ),
                                            const Tab(
                                              text: 'Editar Curso',
                                            ),
                                            const Tab(
                                              text: 'Personalizar Certificado',
                                            ),
                                          ],
                                          controller: _model.tabBarController,
                                          onTap: (i) async {
                                            [
                                              () async {},
                                              () async {},
                                              () async {}
                                            ][i]();
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        child: TabBarView(
                                          controller: _model.tabBarController,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(20.0),
                                              child: Container(
                                                width: 100.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 20.0),
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          12.0,
                                                                          12.0,
                                                                          25.0),
                                                              child: Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    1.0,
                                                                height: 100.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  boxShadow: const [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          1.0,
                                                                      color: Color(
                                                                          0x33000000),
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
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Flexible(
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.info,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 24.0,
                                                                              ),
                                                                            ),
                                                                            Flexible(
                                                                              child: Text(
                                                                                'Área do produtor / Detalhes do curso',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          if (responsiveVisibility(
                                                                            context:
                                                                                context,
                                                                            tablet:
                                                                                false,
                                                                            tabletLandscape:
                                                                                false,
                                                                            desktop:
                                                                                false,
                                                                          ))
                                                                            InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                scaffoldKey.currentState!.openDrawer();
                                                                              },
                                                                              child: Icon(
                                                                                Icons.menu_outlined,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                size: 35.0,
                                                                              ),
                                                                            ),
                                                                          if (responsiveVisibility(
                                                                            context:
                                                                                context,
                                                                            phone:
                                                                                false,
                                                                          ))
                                                                            Icon(
                                                                              Icons.lightbulb_outlined,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Column(
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
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Informações do curso',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Veja os detalhes e informações do curso e dos alunos.',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Flexible(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    16.0),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                              ),
                                                              child:
                                                                  SingleChildScrollView(
                                                                scrollDirection:
                                                                    Axis.horizontal,
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                          const BorderRadius
                                                                              .only(
                                                                        bottomLeft:
                                                                            Radius.circular(0.0),
                                                                        bottomRight:
                                                                            Radius.circular(0.0),
                                                                        topLeft:
                                                                            Radius.circular(0.0),
                                                                        topRight:
                                                                            Radius.circular(0.0),
                                                                      ),
                                                                      child: Image
                                                                          .network(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          cursoDetailCursosRecord
                                                                              .photoURL,
                                                                          'https://mrconfeccoes.com.br/wp-content/uploads/2018/03/default.jpg',
                                                                        ),
                                                                        width:
                                                                            120.0,
                                                                        height:
                                                                            100.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(16.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              cursoDetailCursosRecord.name,
                                                                              style: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                    fontFamily: 'Roboto',
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              cursoDetailCursosRecord.description,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              'Feito por ${cursoDetailCursosRecord.instructorName}',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontStyle: FontStyle.italic,
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
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    'Ações:',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          16.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          await Clipboard.setData(
                                                                              ClipboardData(text: '${FFAppConstants.MainUrl}courseInvitation/?cursoID=${cursoDetailCursosRecord.reference.id}'));
                                                                          ScaffoldMessenger.of(context)
                                                                              .showSnackBar(
                                                                            SnackBar(
                                                                              content: Text(
                                                                                'Link copiado para área de transferência!',
                                                                                style: TextStyle(
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                ),
                                                                              ),
                                                                              duration: const Duration(milliseconds: 4000),
                                                                              backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              250.0,
                                                                          height:
                                                                              100.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
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
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                      child: Icon(
                                                                                        Icons.person_add,
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        size: 40.0,
                                                                                      ),
                                                                                    ),
                                                                                    Flexible(
                                                                                      child: Text(
                                                                                        'Convidar membros',
                                                                                        style: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                              fontFamily: 'Roboto',
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 24.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ).animateOnPageLoad(
                                                                              animationsMap['containerOnPageLoadAnimation1']!),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          await actions
                                                                              .gerarPDF(
                                                                            'ALUNO ',
                                                                            cursoDetailCursosRecord.name,
                                                                            cursoDetailCursosRecord.instructorName,
                                                                            cursoDetailCursosRecord.createdAt!,
                                                                            cursoDetailCursosRecord.duracao.toString(),
                                                                            '12345-6789-0000',
                                                                          );
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              250.0,
                                                                          height:
                                                                              100.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
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
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                      child: Icon(
                                                                                        Icons.document_scanner,
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        size: 40.0,
                                                                                      ),
                                                                                    ),
                                                                                    Flexible(
                                                                                      child: Text(
                                                                                        'Visualizar Certificado',
                                                                                        style: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                              fontFamily: 'Roboto',
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 24.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ).animateOnPageLoad(
                                                                              animationsMap['containerOnPageLoadAnimation2']!),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        16.0,
                                                                        0.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      'Membros:',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        16.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            40.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          borderRadius:
                                                                              const BorderRadius.only(
                                                                            bottomLeft:
                                                                                Radius.circular(0.0),
                                                                            bottomRight:
                                                                                Radius.circular(0.0),
                                                                            topLeft:
                                                                                Radius.circular(8.0),
                                                                            topRight:
                                                                                Radius.circular(8.0),
                                                                          ),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              16.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Expanded(
                                                                                flex: 2,
                                                                                child: Text(
                                                                                  'Usuário',
                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              if (responsiveVisibility(
                                                                                context: context,
                                                                                phone: false,
                                                                              ))
                                                                                Expanded(
                                                                                  flex: 1,
                                                                                  child: Text(
                                                                                    'Data de inscrição',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                          fontFamily: 'Readex Pro',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              Expanded(
                                                                                child: Text(
                                                                                  'Actions',
                                                                                  textAlign: TextAlign.center,
                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Builder(
                                                                      builder:
                                                                          (context) {
                                                                        final userList = cursoDetailCursosRecord
                                                                            .userList
                                                                            .toList();

                                                                        return ListView
                                                                            .builder(
                                                                          padding:
                                                                              EdgeInsets.zero,
                                                                          shrinkWrap:
                                                                              true,
                                                                          scrollDirection:
                                                                              Axis.vertical,
                                                                          itemCount:
                                                                              userList.length,
                                                                          itemBuilder:
                                                                              (context, userListIndex) {
                                                                            final userListItem =
                                                                                userList[userListIndex];
                                                                            return Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                                                                              child: StreamBuilder<UsersRecord>(
                                                                                stream: UsersRecord.getDocument(userListItem),
                                                                                builder: (context, snapshot) {
                                                                                  // Customize what your widget looks like when it's loading.
                                                                                  if (!snapshot.hasData) {
                                                                                    return Center(
                                                                                      child: SizedBox(
                                                                                        width: 50.0,
                                                                                        height: 50.0,
                                                                                        child: SpinKitPulse(
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          size: 50.0,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  }

                                                                                  final containerUsersRecord = snapshot.data!;

                                                                                  return Container(
                                                                                    width: 100.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      boxShadow: [
                                                                                        BoxShadow(
                                                                                          blurRadius: 0.0,
                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          offset: const Offset(
                                                                                            0.0,
                                                                                            1.0,
                                                                                          ),
                                                                                        )
                                                                                      ],
                                                                                      border: Border.all(
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            flex: 2,
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 12.0, 8.0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 3.0, 0.0),
                                                                                                    child: Container(
                                                                                                      width: 40.0,
                                                                                                      height: 40.0,
                                                                                                      clipBehavior: Clip.antiAlias,
                                                                                                      decoration: const BoxDecoration(
                                                                                                        shape: BoxShape.circle,
                                                                                                      ),
                                                                                                      child: Image.network(
                                                                                                        valueOrDefault<String>(
                                                                                                          containerUsersRecord.photoUrl,
                                                                                                          'https://static.vecteezy.com/system/resources/thumbnails/009/292/244/small/default-avatar-icon-of-social-media-user-vector.jpg',
                                                                                                        ),
                                                                                                        fit: BoxFit.cover,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Expanded(
                                                                                                    child: Padding(
                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            containerUsersRecord.displayName,
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: 'Readex Pro',
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                ),
                                                                                                          ),
                                                                                                          Padding(
                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                            child: Text(
                                                                                                              containerUsersRecord.email,
                                                                                                              style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                                    fontFamily: 'Readex Pro',
                                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                                    letterSpacing: 0.0,
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
                                                                                          if (responsiveVisibility(
                                                                                            context: context,
                                                                                            phone: false,
                                                                                          ))
                                                                                            Expanded(
                                                                                              flex: 1,
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                child: StreamBuilder<List<AlunosCursoRecord>>(
                                                                                                  stream: queryAlunosCursoRecord(
                                                                                                    queryBuilder: (alunosCursoRecord) => alunosCursoRecord
                                                                                                        .where(
                                                                                                          'cursoID',
                                                                                                          isEqualTo: widget.curso,
                                                                                                        )
                                                                                                        .where(
                                                                                                          'alunoUser',
                                                                                                          isEqualTo: userListItem,
                                                                                                        ),
                                                                                                    singleRecord: true,
                                                                                                  ),
                                                                                                  builder: (context, snapshot) {
                                                                                                    // Customize what your widget looks like when it's loading.
                                                                                                    if (!snapshot.hasData) {
                                                                                                      return Center(
                                                                                                        child: SizedBox(
                                                                                                          width: 50.0,
                                                                                                          height: 50.0,
                                                                                                          child: SpinKitPulse(
                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                            size: 50.0,
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    }
                                                                                                    List<AlunosCursoRecord> textAlunosCursoRecordList = snapshot.data!;

                                                                                                    // Return an empty Container when the item does not exist.
                                                                                                    if (snapshot.data!.isEmpty) {
                                                                                                      return Container();
                                                                                                    }
                                                                                                    final textAlunosCursoRecord = textAlunosCursoRecordList.isNotEmpty ? textAlunosCursoRecordList.first : null;
                                                                                                    return Text(
                                                                                                      dateTimeFormat(
                                                                                                        'yMMMd',
                                                                                                        textAlunosCursoRecord!.dataInscricao!,
                                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                                      ),
                                                                                                      textAlign: TextAlign.center,
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Readex Pro',
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                    );
                                                                                                  },
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          Expanded(
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              children: [
                                                                                                Builder(
                                                                                                  builder: (context) => Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                    child: FlutterFlowIconButton(
                                                                                                      borderColor: Colors.transparent,
                                                                                                      borderRadius: 30.0,
                                                                                                      borderWidth: 1.0,
                                                                                                      buttonSize: 44.0,
                                                                                                      icon: Icon(
                                                                                                        Icons.edit_outlined,
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        size: 20.0,
                                                                                                      ),
                                                                                                      onPressed: () async {
                                                                                                        await showDialog(
                                                                                                          context: context,
                                                                                                          builder: (dialogContext) {
                                                                                                            return Dialog(
                                                                                                              elevation: 0,
                                                                                                              insetPadding: EdgeInsets.zero,
                                                                                                              backgroundColor: Colors.transparent,
                                                                                                              alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                              child: GestureDetector(
                                                                                                                onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                                child: UserPopUpWidget(
                                                                                                                  userRef: containerUsersRecord.reference,
                                                                                                                  courseRef: widget.curso!,
                                                                                                                  productorRef: cursoDetailCursosRecord.productorId!,
                                                                                                                ),
                                                                                                              ),
                                                                                                            );
                                                                                                          },
                                                                                                        ).then((value) => setState(() {}));
                                                                                                      },
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                    ),
                                                                  ],
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
                                            Padding(
                                              padding: const EdgeInsets.all(20.0),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      12.0,
                                                                      12.0,
                                                                      25.0),
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              boxShadow: const [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      1.0,
                                                                  color: Color(
                                                                      0x33000000),
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
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .edit_square,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        'Área do produtor / Editar Curso',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              fontSize: 16.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if (responsiveVisibility(
                                                                        context:
                                                                            context,
                                                                        tablet:
                                                                            false,
                                                                        tabletLandscape:
                                                                            false,
                                                                        desktop:
                                                                            false,
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
                                                                          onTap:
                                                                              () async {
                                                                            scaffoldKey.currentState!.openDrawer();
                                                                          },
                                                                          child:
                                                                              Icon(
                                                                            Icons.menu_outlined,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                35.0,
                                                                          ),
                                                                        ),
                                                                      if (responsiveVisibility(
                                                                        context:
                                                                            context,
                                                                        phone:
                                                                            false,
                                                                      ))
                                                                        Icon(
                                                                          Icons
                                                                              .lightbulb_outlined,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Column(
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
                                                                'Editar Curso',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
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
                                                                'Modifique as informações do curso',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
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
                                                      ],
                                                    ),
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, -1.0),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            10.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, -1.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          20.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              16.0),
                                                                      child:
                                                                          SizedBox(
                                                                        width: double
                                                                            .infinity,
                                                                        child:
                                                                            TextFormField(
                                                                          controller: _model.nameTextController ??=
                                                                              TextEditingController(
                                                                            text:
                                                                                cursoDetailCursosRecord.name,
                                                                          ),
                                                                          focusNode:
                                                                              _model.nameFocusNode,
                                                                          autofocus:
                                                                              true,
                                                                          autofillHints: const [
                                                                            AutofillHints.email
                                                                          ],
                                                                          obscureText:
                                                                              false,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            labelText:
                                                                                'Nome do Curso',
                                                                            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            enabledBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            focusedBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: const BorderSide(
                                                                                color: Color(0xFF4B39EF),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            errorBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: const BorderSide(
                                                                                color: Color(0xFFFF5963),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            focusedErrorBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: const BorderSide(
                                                                                color: Color(0xFFFF5963),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            filled:
                                                                                true,
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                          ),
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Plus Jakarta Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontSize:
                                                                                14.0,
                                                                          ),
                                                                          validator: _model
                                                                              .nameTextControllerValidator
                                                                              .asValidator(context),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              16.0),
                                                                      child:
                                                                          SizedBox(
                                                                        width: double
                                                                            .infinity,
                                                                        child:
                                                                            TextFormField(
                                                                          controller: _model.descriptionTextController ??=
                                                                              TextEditingController(
                                                                            text:
                                                                                cursoDetailCursosRecord.description,
                                                                          ),
                                                                          focusNode:
                                                                              _model.descriptionFocusNode,
                                                                          autofocus:
                                                                              true,
                                                                          autofillHints: const [
                                                                            AutofillHints.email
                                                                          ],
                                                                          obscureText:
                                                                              false,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            labelText:
                                                                                'Descrição',
                                                                            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            enabledBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            focusedBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: const BorderSide(
                                                                                color: Color(0xFF4B39EF),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            errorBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: const BorderSide(
                                                                                color: Color(0xFFFF5963),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            focusedErrorBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: const BorderSide(
                                                                                color: Color(0xFFFF5963),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            filled:
                                                                                true,
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                          validator: _model
                                                                              .descriptionTextControllerValidator
                                                                              .asValidator(context),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              16.0),
                                                                      child:
                                                                          SizedBox(
                                                                        width: double
                                                                            .infinity,
                                                                        child:
                                                                            TextFormField(
                                                                          controller: _model.professorTextController ??=
                                                                              TextEditingController(
                                                                            text:
                                                                                cursoDetailCursosRecord.instructorName,
                                                                          ),
                                                                          focusNode:
                                                                              _model.professorFocusNode,
                                                                          autofocus:
                                                                              true,
                                                                          autofillHints: const [
                                                                            AutofillHints.email
                                                                          ],
                                                                          obscureText:
                                                                              false,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            labelText:
                                                                                'Professor (certificado)',
                                                                            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            enabledBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            focusedBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: const BorderSide(
                                                                                color: Color(0xFF4B39EF),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            errorBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: const BorderSide(
                                                                                color: Color(0xFFFF5963),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            focusedErrorBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: const BorderSide(
                                                                                color: Color(0xFFFF5963),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            filled:
                                                                                true,
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                          validator: _model
                                                                              .professorTextControllerValidator
                                                                              .asValidator(context),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              16.0),
                                                                      child:
                                                                          SizedBox(
                                                                        width: double
                                                                            .infinity,
                                                                        child:
                                                                            TextFormField(
                                                                          controller: _model.duracaoTextController ??=
                                                                              TextEditingController(
                                                                            text:
                                                                                cursoDetailCursosRecord.duracao.toString(),
                                                                          ),
                                                                          focusNode:
                                                                              _model.duracaoFocusNode,
                                                                          autofocus:
                                                                              true,
                                                                          autofillHints: const [
                                                                            AutofillHints.email
                                                                          ],
                                                                          obscureText:
                                                                              false,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            labelText:
                                                                                'Carga horária (horas)',
                                                                            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            enabledBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            focusedBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: const BorderSide(
                                                                                color: Color(0xFF4B39EF),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            errorBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: const BorderSide(
                                                                                color: Color(0xFFFF5963),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            focusedErrorBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: const BorderSide(
                                                                                color: Color(0xFFFF5963),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            filled:
                                                                                true,
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                          keyboardType:
                                                                              TextInputType.number,
                                                                          validator: _model
                                                                              .duracaoTextControllerValidator
                                                                              .asValidator(context),
                                                                          inputFormatters: [
                                                                            FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            -1.0,
                                                                            -1.0),
                                                                        child:
                                                                            Text(
                                                                          'Possui limite de usários?',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Theme(
                                                                        data:
                                                                            ThemeData(
                                                                          checkboxTheme:
                                                                              CheckboxThemeData(
                                                                            visualDensity:
                                                                                VisualDensity.compact,
                                                                            materialTapTargetSize:
                                                                                MaterialTapTargetSize.shrinkWrap,
                                                                            shape:
                                                                                RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          unselectedWidgetColor:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                        ),
                                                                        child:
                                                                            Checkbox(
                                                                          value: _model.checkboxValue ??=
                                                                              cursoDetailCursosRecord.hasUserLimit,
                                                                          onChanged:
                                                                              (newValue) async {
                                                                            setState(() =>
                                                                                _model.checkboxValue = newValue!);
                                                                          },
                                                                          side:
                                                                              BorderSide(
                                                                            width:
                                                                                2,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                          ),
                                                                          activeColor:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          checkColor:
                                                                              FlutterFlowTheme.of(context).info,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  if (_model
                                                                          .checkboxValue ??
                                                                      true)
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(16.0),
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              double.infinity,
                                                                          child:
                                                                              TextFormField(
                                                                            controller: _model.limiteUsersTextController ??=
                                                                                TextEditingController(
                                                                              text: cursoDetailCursosRecord.usersLimit.toString(),
                                                                            ),
                                                                            focusNode:
                                                                                _model.limiteUsersFocusNode,
                                                                            autofocus:
                                                                                true,
                                                                            autofillHints: const [
                                                                              AutofillHints.email
                                                                            ],
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              labelText: 'Limite de Usuários',
                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              enabledBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                              ),
                                                                              focusedBorder: OutlineInputBorder(
                                                                                borderSide: const BorderSide(
                                                                                  color: Color(0xFF4B39EF),
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                              ),
                                                                              errorBorder: OutlineInputBorder(
                                                                                borderSide: const BorderSide(
                                                                                  color: Color(0xFFFF5963),
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                              ),
                                                                              focusedErrorBorder: OutlineInputBorder(
                                                                                borderSide: const BorderSide(
                                                                                  color: Color(0xFFFF5963),
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                              ),
                                                                              filled: true,
                                                                              fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                            ),
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Plus Jakarta Sans',
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontWeight: FontWeight.w500,
                                                                              fontSize: 14.0,
                                                                            ),
                                                                            keyboardType:
                                                                                TextInputType.number,
                                                                            validator:
                                                                                _model.limiteUsersTextControllerValidator.asValidator(context),
                                                                            inputFormatters: [
                                                                              FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            12.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children:
                                                                          [
                                                                        if (_model.photoChanged ==
                                                                            false)
                                                                          Container(
                                                                            width:
                                                                                100.0,
                                                                            height:
                                                                                100.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).accent1,
                                                                              image: DecorationImage(
                                                                                fit: BoxFit.cover,
                                                                                image: Image.network(
                                                                                  cursoDetailCursosRecord.photoURL,
                                                                                ).image,
                                                                              ),
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                width: 2.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        if (_model
                                                                            .photoChanged)
                                                                          Container(
                                                                            width:
                                                                                100.0,
                                                                            height:
                                                                                100.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).accent1,
                                                                              image: DecorationImage(
                                                                                fit: BoxFit.cover,
                                                                                image: Image.network(
                                                                                  _model.uploadedFileUrl,
                                                                                ).image,
                                                                              ),
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                width: 2.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            final selectedMedia =
                                                                                await selectMediaWithSourceBottomSheet(
                                                                              context: context,
                                                                              allowPhoto: true,
                                                                            );
                                                                            if (selectedMedia != null &&
                                                                                selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                              setState(() => _model.isDataUploading = true);
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
                                                                              if (selectedUploadedFiles.length == selectedMedia.length && downloadUrls.length == selectedMedia.length) {
                                                                                setState(() {
                                                                                  _model.uploadedLocalFile = selectedUploadedFiles.first;
                                                                                  _model.uploadedFileUrl = downloadUrls.first;
                                                                                });
                                                                              } else {
                                                                                setState(() {});
                                                                                return;
                                                                              }
                                                                            }

                                                                            _model.photoChanged =
                                                                                true;
                                                                            setState(() {});
                                                                          },
                                                                          text:
                                                                              'Escolher Foto',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            height:
                                                                                44.0,
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
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                            hoverColor:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            hoverBorderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              width: 2.0,
                                                                            ),
                                                                            hoverTextColor:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            hoverElevation:
                                                                                3.0,
                                                                          ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        FFButtonWidget(
                                                                      onPressed:
                                                                          () async {
                                                                        if (_model
                                                                            .photoChanged) {
                                                                          await widget
                                                                              .curso!
                                                                              .update({
                                                                            ...createCursosRecordData(
                                                                              name: _model.nameTextController.text,
                                                                              description: _model.descriptionTextController.text,
                                                                              instructorName: _model.professorTextController.text,
                                                                              duracao: int.tryParse(_model.duracaoTextController.text),
                                                                              photoURL: _model.uploadedFileUrl,
                                                                              hasUserLimit: _model.checkboxValue,
                                                                              usersLimit: int.tryParse(_model.limiteUsersTextController.text),
                                                                            ),
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'EditAt': FieldValue.serverTimestamp(),
                                                                              },
                                                                            ),
                                                                          });
                                                                        } else {
                                                                          await widget
                                                                              .curso!
                                                                              .update({
                                                                            ...createCursosRecordData(
                                                                              name: _model.nameTextController.text,
                                                                              description: _model.descriptionTextController.text,
                                                                              instructorName: _model.professorTextController.text,
                                                                              duracao: int.tryParse(_model.duracaoTextController.text),
                                                                              hasUserLimit: _model.checkboxValue,
                                                                              usersLimit: int.tryParse(_model.limiteUsersTextController.text),
                                                                            ),
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'EditAt': FieldValue.serverTimestamp(),
                                                                              },
                                                                            ),
                                                                          });
                                                                        }

                                                                        ScaffoldMessenger.of(context)
                                                                            .showSnackBar(
                                                                          SnackBar(
                                                                            content:
                                                                                Text(
                                                                              'Curso editado com sucesso',
                                                                              style: TextStyle(
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                              ),
                                                                            ),
                                                                            duration:
                                                                                const Duration(milliseconds: 3500),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                          ),
                                                                        );
                                                                      },
                                                                      text:
                                                                          'Salvar alterações',
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
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.white,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        elevation:
                                                                            3.0,
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Colors.transparent,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(20.0),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      12.0,
                                                                      12.0,
                                                                      25.0),
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              boxShadow: const [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      1.0,
                                                                  color: Color(
                                                                      0x33000000),
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
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .edit_square,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        'Área do produtor / Personalizar Certificado',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              fontSize: 16.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if (responsiveVisibility(
                                                                        context:
                                                                            context,
                                                                        tablet:
                                                                            false,
                                                                        tabletLandscape:
                                                                            false,
                                                                        desktop:
                                                                            false,
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
                                                                          onTap:
                                                                              () async {
                                                                            scaffoldKey.currentState!.openDrawer();
                                                                          },
                                                                          child:
                                                                              Icon(
                                                                            Icons.menu_outlined,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                35.0,
                                                                          ),
                                                                        ),
                                                                      if (responsiveVisibility(
                                                                        context:
                                                                            context,
                                                                        phone:
                                                                            false,
                                                                      ))
                                                                        Icon(
                                                                          Icons
                                                                              .lightbulb_outlined,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Column(
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
                                                                'Meus templates',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
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
                                                                          20.0),
                                                              child: Text(
                                                                'Crie, edite e visualize o seu certificado!  ',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
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
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          20.0),
                                                              child: Text(
                                                                'Certificado Atual para este curso',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    if (cursoDetailCursosRecord
                                                            .templateRef !=
                                                        null)
                                                      StreamBuilder<
                                                          TemplateCertificadoRecord>(
                                                        stream: TemplateCertificadoRecord
                                                            .getDocument(
                                                                cursoDetailCursosRecord
                                                                    .templateRef!),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    SpinKitPulse(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 50.0,
                                                                ),
                                                              ),
                                                            );
                                                          }

                                                          final columnTemplateCertificadoRecord =
                                                              snapshot.data!;

                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 565.0,
                                                                height: 400.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  image:
                                                                      DecorationImage(
                                                                    fit: BoxFit
                                                                        .cover,
                                                                    image: Image
                                                                        .asset(
                                                                      'assets/images/certificate1.png',
                                                                    ).image,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          50.0,
                                                                          75.0,
                                                                          50.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Flexible(
                                                                            child:
                                                                                Text(
                                                                              columnTemplateCertificadoRecord.certificado,
                                                                              textAlign: TextAlign.center,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: functions.stringToColor(columnTemplateCertificadoRecord.certificadoCOR),
                                                                                    fontSize: columnTemplateCertificadoRecord.certificadoSize,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            40.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Flexible(
                                                                              child: Text(
                                                                                columnTemplateCertificadoRecord.preName,
                                                                                textAlign: TextAlign.center,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: functions.stringToColor(columnTemplateCertificadoRecord.preNameCOR),
                                                                                      fontSize: columnTemplateCertificadoRecord.preNameSIZE,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            'NOME DO ALUNO',
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: functions.stringToColor(columnTemplateCertificadoRecord.alunoCOR),
                                                                                  fontSize: columnTemplateCertificadoRecord.alunoSIZE,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          // You will have to add an action on this rich text to go to your login page.
                                                                          Flexible(
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                                                                              child: RichText(
                                                                                textScaler: MediaQuery.of(context).textScaler,
                                                                                text: TextSpan(
                                                                                  children: [
                                                                                    TextSpan(
                                                                                      text: columnTemplateCertificadoRecord.preCurso,
                                                                                      style: TextStyle(
                                                                                        color: functions.stringToColor(columnTemplateCertificadoRecord.preCursoCOR),
                                                                                        fontSize: columnTemplateCertificadoRecord.preCursoSIZE,
                                                                                      ),
                                                                                    ),
                                                                                    TextSpan(
                                                                                      text: ' (nome do curso) ',
                                                                                      style: TextStyle(
                                                                                        color: functions.stringToColor(columnTemplateCertificadoRecord.cursoCOR),
                                                                                        fontSize: columnTemplateCertificadoRecord.cursoSize,
                                                                                      ),
                                                                                    ),
                                                                                    TextSpan(
                                                                                      text: columnTemplateCertificadoRecord.preProf,
                                                                                      style: TextStyle(
                                                                                        color: functions.stringToColor(columnTemplateCertificadoRecord.preProfCOR),
                                                                                        fontSize: columnTemplateCertificadoRecord.preProfSIZE,
                                                                                      ),
                                                                                    ),
                                                                                    TextSpan(
                                                                                      text: ' (nome do professor) ',
                                                                                      style: TextStyle(
                                                                                        color: functions.stringToColor(columnTemplateCertificadoRecord.profCOR),
                                                                                        fontSize: columnTemplateCertificadoRecord.profSIZE,
                                                                                      ),
                                                                                    ),
                                                                                    TextSpan(
                                                                                      text: columnTemplateCertificadoRecord.preDate,
                                                                                      style: TextStyle(
                                                                                        color: functions.stringToColor(columnTemplateCertificadoRecord.preDateCOR),
                                                                                        fontSize: columnTemplateCertificadoRecord.preDateSIZE,
                                                                                      ),
                                                                                    ),
                                                                                    TextSpan(
                                                                                      text: ' (data)',
                                                                                      style: TextStyle(
                                                                                        color: functions.stringToColor(columnTemplateCertificadoRecord.dataCOR),
                                                                                        fontSize: columnTemplateCertificadoRecord.dataSIZE,
                                                                                      ),
                                                                                    ),
                                                                                    TextSpan(
                                                                                      text: columnTemplateCertificadoRecord.preDuracao,
                                                                                      style: TextStyle(
                                                                                        color: functions.stringToColor(columnTemplateCertificadoRecord.preDuracaoCOR),
                                                                                        fontSize: columnTemplateCertificadoRecord.preDuracaoSize,
                                                                                      ),
                                                                                    ),
                                                                                    TextSpan(
                                                                                      text: ' (duração) horas.',
                                                                                      style: TextStyle(
                                                                                        color: functions.stringToColor(columnTemplateCertificadoRecord.duracaoCOR),
                                                                                        fontSize: columnTemplateCertificadoRecord.duracaoSIZE,
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: const Color(0xFF101213),
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              if (columnTemplateCertificadoRecord.showIDokey)
                                                                                Text(
                                                                                  'Powered by iDokey',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        fontSize: columnTemplateCertificadoRecord.iDokeySize,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              Text(
                                                                                'Key de segurança',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  20.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        20.0),
                                                            child: Text(
                                                              'Altere o template para este curso',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        20.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                Expanded(
                                                                  flex: 1,
                                                                  child: StreamBuilder<
                                                                      List<
                                                                          TemplateCertificadoRecord>>(
                                                                    stream:
                                                                        queryTemplateCertificadoRecord(),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                SpinKitPulse(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 50.0,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<TemplateCertificadoRecord>
                                                                          dropDownTemplateCertificadoRecordList =
                                                                          snapshot
                                                                              .data!;

                                                                      return FlutterFlowDropDown<
                                                                          String>(
                                                                        controller: _model
                                                                            .dropDownValueController ??= FormFieldController<
                                                                                String>(
                                                                            null),
                                                                        options: dropDownTemplateCertificadoRecordList
                                                                            .map((e) =>
                                                                                e.templateName)
                                                                            .toList(),
                                                                        onChanged:
                                                                            (val) =>
                                                                                setState(() => _model.dropDownValue = val),
                                                                        width:
                                                                            300.0,
                                                                        height:
                                                                            56.0,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        hintText:
                                                                            'Please select...',
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .keyboard_arrow_down_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                        elevation:
                                                                            2.0,
                                                                        borderColor:
                                                                            FlutterFlowTheme.of(context).alternate,
                                                                        borderWidth:
                                                                            2.0,
                                                                        borderRadius:
                                                                            8.0,
                                                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            4.0,
                                                                            16.0,
                                                                            4.0),
                                                                        hidesUnderline:
                                                                            true,
                                                                        isOverButton:
                                                                            true,
                                                                        isSearchable:
                                                                            false,
                                                                        isMultiSelect:
                                                                            false,
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  flex: 1,
                                                                  child:
                                                                      FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      if (_model.dropDownValue !=
                                                                              null &&
                                                                          _model.dropDownValue !=
                                                                              '') {
                                                                        _model.templateRef =
                                                                            await queryTemplateCertificadoRecordOnce(
                                                                          queryBuilder: (templateCertificadoRecord) => templateCertificadoRecord
                                                                              .where(
                                                                                'TemplateName',
                                                                                isEqualTo: _model.dropDownValue,
                                                                              )
                                                                              .where(
                                                                                'UserID',
                                                                                isEqualTo: currentUserReference,
                                                                              ),
                                                                          singleRecord:
                                                                              true,
                                                                        ).then((s) =>
                                                                                s.firstOrNull);

                                                                        await cursoDetailCursosRecord
                                                                            .reference
                                                                            .update(createCursosRecordData(
                                                                          templateRef: _model
                                                                              .templateRef
                                                                              ?.reference,
                                                                        ));
                                                                      } else {
                                                                        ScaffoldMessenger.of(context)
                                                                            .showSnackBar(
                                                                          SnackBar(
                                                                            content:
                                                                                Text(
                                                                              'Por favor, selecione um template!',
                                                                              style: TextStyle(
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                              ),
                                                                            ),
                                                                            duration:
                                                                                const Duration(milliseconds: 4000),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).warning,
                                                                          ),
                                                                        );
                                                                      }

                                                                      setState(
                                                                          () {});
                                                                    },
                                                                    text:
                                                                        'Salvar Alteração',
                                                                    options:
                                                                        FFButtonOptions(
                                                                      width:
                                                                          300.0,
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
                                                                          .primary,
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
                                                              ].divide(const SizedBox(
                                                                  width: 50.0)),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  20.0),
                                                      child: Text(
                                                        'Crie um novo template',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                    FFButtonWidget(
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                            'CreateNewTemplate');
                                                      },
                                                      text:
                                                          'Criar novo template',
                                                      options: FFButtonOptions(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.25,
                                                        height: 40.0,
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    24.0,
                                                                    0.0,
                                                                    24.0,
                                                                    0.0),
                                                        iconPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Colors
                                                                      .white,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        elevation: 3.0,
                                                        borderSide: const BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
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
