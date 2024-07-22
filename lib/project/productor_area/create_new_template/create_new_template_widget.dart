import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'create_new_template_model.dart';
export 'create_new_template_model.dart';

class CreateNewTemplateWidget extends StatefulWidget {
  const CreateNewTemplateWidget({super.key});

  @override
  State<CreateNewTemplateWidget> createState() =>
      _CreateNewTemplateWidgetState();
}

class _CreateNewTemplateWidgetState extends State<CreateNewTemplateWidget> {
  late CreateNewTemplateModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateNewTemplateModel());

    _model.nameTextController ??= TextEditingController();
    _model.nameFocusNode ??= FocusNode();

    _model.certificadoTextController1 ??= TextEditingController();
    _model.certificadoFocusNode1 ??= FocusNode();

    _model.certificadoFonteTextController ??= TextEditingController();
    _model.certificadoFonteFocusNode ??= FocusNode();

    _model.antesNomeTextController ??= TextEditingController();
    _model.antesNomeFocusNode ??= FocusNode();

    _model.antesNomeFonteTextController ??= TextEditingController();
    _model.antesNomeFonteFocusNode ??= FocusNode();

    _model.aLunoTextController ??= TextEditingController();
    _model.aLunoFocusNode ??= FocusNode();

    _model.nomeFonteTextController ??= TextEditingController();
    _model.nomeFonteFocusNode ??= FocusNode();

    _model.prfTextController ??= TextEditingController();
    _model.prfFocusNode ??= FocusNode();

    _model.antesCursoFonteTextController ??= TextEditingController();
    _model.antesCursoFonteFocusNode ??= FocusNode();

    _model.cursoTextController ??= TextEditingController();
    _model.cursoFocusNode ??= FocusNode();

    _model.cursoFonteTextController ??= TextEditingController();
    _model.cursoFonteFocusNode ??= FocusNode();

    _model.antesProfessorTextController ??= TextEditingController();
    _model.antesProfessorFocusNode ??= FocusNode();

    _model.antesProfFonteTextController ??= TextEditingController();
    _model.antesProfFonteFocusNode ??= FocusNode();

    _model.pRofessorTextController ??= TextEditingController();
    _model.pRofessorFocusNode ??= FocusNode();

    _model.profFonteTextController ??= TextEditingController();
    _model.profFonteFocusNode ??= FocusNode();

    _model.antesdataTextController ??= TextEditingController();
    _model.antesdataFocusNode ??= FocusNode();

    _model.antesDataFonteTextController ??= TextEditingController();
    _model.antesDataFonteFocusNode ??= FocusNode();

    _model.dataTextController ??= TextEditingController();
    _model.dataFocusNode ??= FocusNode();

    _model.dataFonteTextController ??= TextEditingController();
    _model.dataFonteFocusNode ??= FocusNode();

    _model.antesDuracaoTextController ??= TextEditingController();
    _model.antesDuracaoFocusNode ??= FocusNode();

    _model.antesDuracaoFonteTextController ??= TextEditingController();
    _model.antesDuracaoFonteFocusNode ??= FocusNode();

    _model.certificadoTextController2 ??= TextEditingController();
    _model.certificadoFocusNode2 ??= FocusNode();

    _model.duracaoFonteTextController ??= TextEditingController();
    _model.duracaoFonteFocusNode ??= FocusNode();

    _model.powerediDokeyTextController ??= TextEditingController();
    _model.powerediDokeyFocusNode ??= FocusNode();

    _model.idokeyFonteTextController ??= TextEditingController();
    _model.idokeyFonteFocusNode ??= FocusNode();

    _model.keyseguranaTextController ??= TextEditingController();
    _model.keyseguranaFocusNode ??= FocusNode();

    _model.keyFonteTextController ??= TextEditingController();
    _model.keyFonteFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.certificadoTextController1?.text = 'Certificado';
          _model.certificadoFonteTextController?.text = '23';
          _model.antesNomeTextController?.text = 'Certificamos que';
          _model.antesNomeFonteTextController?.text = '16';
          _model.aLunoTextController?.text = 'NOME DO ALUNO';
          _model.nomeFonteTextController?.text = '31';
          _model.prfTextController?.text = 'Concluiu com sucesso a formação';
          _model.antesCursoFonteTextController?.text = '16';
          _model.cursoTextController?.text = 'NOME DO CURSO';
          _model.cursoFonteTextController?.text = '16';
          _model.antesProfessorTextController?.text =
              'Ministrado pelo profissional';
          _model.antesProfFonteTextController?.text = '16';
          _model.pRofessorTextController?.text = 'Nome do Professor';
          _model.profFonteTextController?.text = '16';
          _model.antesdataTextController?.text = 'na data de';
          _model.antesDataFonteTextController?.text = '16';
          _model.dataTextController?.text = 'DATA DE EMISSÃO DO CERTIFICADO';
          _model.dataFonteTextController?.text = '16';
          _model.antesDuracaoTextController?.text = 'com uma duração de';
          _model.antesDuracaoFonteTextController?.text = '16';
          _model.certificadoTextController2?.text = '[DURÃÇAO] horas';
          _model.duracaoFonteTextController?.text = '16';
          _model.powerediDokeyTextController?.text = 'Powered by iDokey';
          _model.idokeyFonteTextController?.text = '12';
          _model.keyseguranaTextController?.text = '[Key de segurança]';
          _model.keyFonteTextController?.text = '16';
        }));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'CreateNewTemplate',
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
                        tabAtual: 4,
                      ),
                    ),
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
                                20.0, 30.0, 20.0, 20.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 12.0, 12.0, 25.0),
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
                                                        Icons.feedback_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Área do produtor / Criar novo template',
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
                                    ],
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: TextFormField(
                                          controller: _model.nameTextController,
                                          focusNode: _model.nameFocusNode,
                                          autofocus: true,
                                          autofillHints: const [AutofillHints.email],
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Nome do template',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFF4B39EF),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFFFF5963),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFFFF5963),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                          ),
                                          style: GoogleFonts.getFont(
                                            'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.0,
                                          ),
                                          validator: _model
                                              .nameTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        if (!_model.photoAdded)
                                          Container(
                                            width: 565.0,
                                            height: 400.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.asset(
                                                  'assets/images/certificate1.png',
                                                ).image,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      50.0, 75.0, 50.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Flexible(
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            _model.mode = 1;
                                                            setState(() {});
                                                          },
                                                          child: Text(
                                                            _model
                                                                .certificadoTextController1
                                                                .text,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: _model
                                                                      .colorPicked1,
                                                                  fontSize: double
                                                                      .tryParse(_model
                                                                          .certificadoFonteTextController
                                                                          .text),
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 40.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Flexible(
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
                                                              _model.mode = 2;
                                                              setState(() {});
                                                            },
                                                            child: Text(
                                                              _model
                                                                  .antesNomeTextController
                                                                  .text,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: _model
                                                                        .colorPicked2,
                                                                    fontSize: double
                                                                        .tryParse(_model
                                                                            .antesNomeFonteTextController
                                                                            .text),
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
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
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
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
                                                          _model.mode = 3;
                                                          setState(() {});
                                                        },
                                                        child: Text(
                                                          'NOME DO ALUNO',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: _model
                                                                    .colorPicked3,
                                                                fontSize: double
                                                                    .tryParse(_model
                                                                        .nomeFonteTextController
                                                                        .text),
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
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
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      12.0,
                                                                      0.0,
                                                                      12.0),
                                                          child: RichText(
                                                            textScaler:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text: _model
                                                                      .prfTextController
                                                                      .text,
                                                                  style:
                                                                      TextStyle(
                                                                    color: _model
                                                                        .colorPicked4,
                                                                    fontSize: double
                                                                        .tryParse(_model
                                                                            .antesCursoFonteTextController
                                                                            .text),
                                                                  ),
                                                                  mouseCursor:
                                                                      SystemMouseCursors
                                                                          .click,
                                                                  recognizer:
                                                                      TapGestureRecognizer()
                                                                        ..onTap =
                                                                            () async {
                                                                          _model.mode =
                                                                              4;
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                      ' (nome do curso) ',
                                                                  style:
                                                                      TextStyle(
                                                                    color: _model
                                                                        .colorPicked5,
                                                                    fontSize: double
                                                                        .tryParse(_model
                                                                            .cursoFonteTextController
                                                                            .text),
                                                                  ),
                                                                  mouseCursor:
                                                                      SystemMouseCursors
                                                                          .click,
                                                                  recognizer:
                                                                      TapGestureRecognizer()
                                                                        ..onTap =
                                                                            () async {
                                                                          _model.mode =
                                                                              5;
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                ),
                                                                TextSpan(
                                                                  text: _model
                                                                      .antesProfessorTextController
                                                                      .text,
                                                                  style:
                                                                      TextStyle(
                                                                    color: _model
                                                                        .colorPicked6,
                                                                    fontSize: double
                                                                        .tryParse(_model
                                                                            .antesProfFonteTextController
                                                                            .text),
                                                                  ),
                                                                  mouseCursor:
                                                                      SystemMouseCursors
                                                                          .click,
                                                                  recognizer:
                                                                      TapGestureRecognizer()
                                                                        ..onTap =
                                                                            () async {
                                                                          _model.mode =
                                                                              6;
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                      ' (nome do professor) ',
                                                                  style:
                                                                      TextStyle(
                                                                    color: _model
                                                                        .colorPicked7,
                                                                    fontSize: double
                                                                        .tryParse(_model
                                                                            .profFonteTextController
                                                                            .text),
                                                                  ),
                                                                  mouseCursor:
                                                                      SystemMouseCursors
                                                                          .click,
                                                                  recognizer:
                                                                      TapGestureRecognizer()
                                                                        ..onTap =
                                                                            () async {
                                                                          _model.mode =
                                                                              7;
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                ),
                                                                TextSpan(
                                                                  text: _model
                                                                      .antesdataTextController
                                                                      .text,
                                                                  style:
                                                                      TextStyle(
                                                                    color: _model
                                                                        .colorPicked8,
                                                                    fontSize: double
                                                                        .tryParse(_model
                                                                            .antesDataFonteTextController
                                                                            .text),
                                                                  ),
                                                                  mouseCursor:
                                                                      SystemMouseCursors
                                                                          .click,
                                                                  recognizer:
                                                                      TapGestureRecognizer()
                                                                        ..onTap =
                                                                            () async {
                                                                          _model.mode =
                                                                              8;
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                      ' (data)',
                                                                  style:
                                                                      TextStyle(
                                                                    color: _model
                                                                        .colorPicked9,
                                                                    fontSize: double
                                                                        .tryParse(_model
                                                                            .dataFonteTextController
                                                                            .text),
                                                                  ),
                                                                  mouseCursor:
                                                                      SystemMouseCursors
                                                                          .click,
                                                                  recognizer:
                                                                      TapGestureRecognizer()
                                                                        ..onTap =
                                                                            () async {
                                                                          _model.mode =
                                                                              9;
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                ),
                                                                TextSpan(
                                                                  text: _model
                                                                      .antesDuracaoTextController
                                                                      .text,
                                                                  style:
                                                                      TextStyle(
                                                                    color: _model
                                                                        .colorPicked10,
                                                                    fontSize: double
                                                                        .tryParse(_model
                                                                            .antesDuracaoFonteTextController
                                                                            .text),
                                                                  ),
                                                                  mouseCursor:
                                                                      SystemMouseCursors
                                                                          .click,
                                                                  recognizer:
                                                                      TapGestureRecognizer()
                                                                        ..onTap =
                                                                            () async {
                                                                          _model.mode =
                                                                              10;
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                      ' (duração) horas.',
                                                                  style:
                                                                      TextStyle(
                                                                    color: _model
                                                                        .colorPicked11,
                                                                    fontSize: double
                                                                        .tryParse(_model
                                                                            .duracaoFonteTextController
                                                                            .text),
                                                                  ),
                                                                  mouseCursor:
                                                                      SystemMouseCursors
                                                                          .click,
                                                                  recognizer:
                                                                      TapGestureRecognizer()
                                                                        ..onTap =
                                                                            () async {
                                                                          _model.mode =
                                                                              11;
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                )
                                                              ],
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    color: const Color(
                                                                        0xFF101213),
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          if (_model
                                                                  .checkboxValue2 ??
                                                              true)
                                                            InkWell(
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
                                                                _model.mode =
                                                                    12;
                                                                setState(() {});
                                                              },
                                                              child: Text(
                                                                'Powered by iDokey',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: _model
                                                                          .colorPicked12,
                                                                      fontSize: double.tryParse(_model
                                                                          .idokeyFonteTextController
                                                                          .text),
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          InkWell(
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
                                                              _model.mode = 13;
                                                              setState(() {});
                                                            },
                                                            child: Text(
                                                              'Key de segurança',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: _model
                                                                        .colorPicked13,
                                                                    fontSize: double
                                                                        .tryParse(_model
                                                                            .keyFonteTextController
                                                                            .text),
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
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
                                        if (_model.photoAdded)
                                          Container(
                                            width: 565.0,
                                            height: 400.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.network(
                                                  _model.uploadedFileUrl,
                                                ).image,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      50.0, 75.0, 50.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Flexible(
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            _model.mode = 1;
                                                            setState(() {});
                                                          },
                                                          child: Text(
                                                            _model
                                                                .certificadoTextController1
                                                                .text,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: _model
                                                                      .colorPicked1,
                                                                  fontSize: double
                                                                      .tryParse(_model
                                                                          .certificadoFonteTextController
                                                                          .text),
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 40.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Flexible(
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
                                                              _model.mode = 2;
                                                              setState(() {});
                                                            },
                                                            child: Text(
                                                              _model
                                                                  .antesNomeTextController
                                                                  .text,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: _model
                                                                        .colorPicked2,
                                                                    fontSize: double
                                                                        .tryParse(_model
                                                                            .antesNomeFonteTextController
                                                                            .text),
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
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
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
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
                                                          _model.mode = 3;
                                                          setState(() {});
                                                        },
                                                        child: Text(
                                                          'NOME DO ALUNO',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: _model
                                                                    .colorPicked3,
                                                                fontSize: double
                                                                    .tryParse(_model
                                                                        .nomeFonteTextController
                                                                        .text),
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
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
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      12.0,
                                                                      0.0,
                                                                      12.0),
                                                          child: RichText(
                                                            textScaler:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text: _model
                                                                      .prfTextController
                                                                      .text,
                                                                  style:
                                                                      TextStyle(
                                                                    color: _model
                                                                        .colorPicked4,
                                                                    fontSize: double
                                                                        .tryParse(_model
                                                                            .antesCursoFonteTextController
                                                                            .text),
                                                                  ),
                                                                  mouseCursor:
                                                                      SystemMouseCursors
                                                                          .click,
                                                                  recognizer:
                                                                      TapGestureRecognizer()
                                                                        ..onTap =
                                                                            () async {
                                                                          _model.mode =
                                                                              4;
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                      ' (nome do curso) ',
                                                                  style:
                                                                      TextStyle(
                                                                    color: _model
                                                                        .colorPicked5,
                                                                    fontSize: double
                                                                        .tryParse(_model
                                                                            .cursoFonteTextController
                                                                            .text),
                                                                  ),
                                                                  mouseCursor:
                                                                      SystemMouseCursors
                                                                          .click,
                                                                  recognizer:
                                                                      TapGestureRecognizer()
                                                                        ..onTap =
                                                                            () async {
                                                                          _model.mode =
                                                                              5;
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                ),
                                                                TextSpan(
                                                                  text: _model
                                                                      .antesProfessorTextController
                                                                      .text,
                                                                  style:
                                                                      TextStyle(
                                                                    color: _model
                                                                        .colorPicked6,
                                                                    fontSize: double
                                                                        .tryParse(_model
                                                                            .antesProfFonteTextController
                                                                            .text),
                                                                  ),
                                                                  mouseCursor:
                                                                      SystemMouseCursors
                                                                          .click,
                                                                  recognizer:
                                                                      TapGestureRecognizer()
                                                                        ..onTap =
                                                                            () async {
                                                                          _model.mode =
                                                                              6;
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                      ' (nome do professor) ',
                                                                  style:
                                                                      TextStyle(
                                                                    color: _model
                                                                        .colorPicked7,
                                                                    fontSize: double
                                                                        .tryParse(_model
                                                                            .profFonteTextController
                                                                            .text),
                                                                  ),
                                                                  mouseCursor:
                                                                      SystemMouseCursors
                                                                          .click,
                                                                  recognizer:
                                                                      TapGestureRecognizer()
                                                                        ..onTap =
                                                                            () async {
                                                                          _model.mode =
                                                                              7;
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                ),
                                                                TextSpan(
                                                                  text: _model
                                                                      .antesdataTextController
                                                                      .text,
                                                                  style:
                                                                      TextStyle(
                                                                    color: _model
                                                                        .colorPicked8,
                                                                    fontSize: double
                                                                        .tryParse(_model
                                                                            .antesDataFonteTextController
                                                                            .text),
                                                                  ),
                                                                  mouseCursor:
                                                                      SystemMouseCursors
                                                                          .click,
                                                                  recognizer:
                                                                      TapGestureRecognizer()
                                                                        ..onTap =
                                                                            () async {
                                                                          _model.mode =
                                                                              8;
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                      ' (data)',
                                                                  style:
                                                                      TextStyle(
                                                                    color: _model
                                                                        .colorPicked9,
                                                                    fontSize: double
                                                                        .tryParse(_model
                                                                            .dataFonteTextController
                                                                            .text),
                                                                  ),
                                                                  mouseCursor:
                                                                      SystemMouseCursors
                                                                          .click,
                                                                  recognizer:
                                                                      TapGestureRecognizer()
                                                                        ..onTap =
                                                                            () async {
                                                                          _model.mode =
                                                                              9;
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                ),
                                                                TextSpan(
                                                                  text: _model
                                                                      .antesDuracaoTextController
                                                                      .text,
                                                                  style:
                                                                      TextStyle(
                                                                    color: _model
                                                                        .colorPicked10,
                                                                    fontSize: double
                                                                        .tryParse(_model
                                                                            .antesDuracaoFonteTextController
                                                                            .text),
                                                                  ),
                                                                  mouseCursor:
                                                                      SystemMouseCursors
                                                                          .click,
                                                                  recognizer:
                                                                      TapGestureRecognizer()
                                                                        ..onTap =
                                                                            () async {
                                                                          _model.mode =
                                                                              10;
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                      ' (duração) horas.',
                                                                  style:
                                                                      TextStyle(
                                                                    color: _model
                                                                        .colorPicked11,
                                                                    fontSize: double
                                                                        .tryParse(_model
                                                                            .duracaoFonteTextController
                                                                            .text),
                                                                  ),
                                                                  mouseCursor:
                                                                      SystemMouseCursors
                                                                          .click,
                                                                  recognizer:
                                                                      TapGestureRecognizer()
                                                                        ..onTap =
                                                                            () async {
                                                                          _model.mode =
                                                                              11;
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                )
                                                              ],
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    color: const Color(
                                                                        0xFF101213),
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          if (_model
                                                                  .checkboxValue2 ??
                                                              true)
                                                            InkWell(
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
                                                                _model.mode =
                                                                    12;
                                                                setState(() {});
                                                              },
                                                              child: Text(
                                                                'Powered by iDokey',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: _model
                                                                          .colorPicked12,
                                                                      fontSize: double.tryParse(_model
                                                                          .idokeyFonteTextController
                                                                          .text),
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          InkWell(
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
                                                              _model.mode = 13;
                                                              setState(() {});
                                                            },
                                                            child: Text(
                                                              'Key de segurança',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: _model
                                                                        .colorPicked13,
                                                                    fontSize: double
                                                                        .tryParse(_model
                                                                            .keyFonteTextController
                                                                            .text),
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
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
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  30.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 20.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            CheckboxThemeData(
                                                          visualDensity:
                                                              VisualDensity
                                                                  .compact,
                                                          materialTapTargetSize:
                                                              MaterialTapTargetSize
                                                                  .shrinkWrap,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4.0),
                                                          ),
                                                        ),
                                                        unselectedWidgetColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                      ),
                                                      child: Checkbox(
                                                        value: _model
                                                                .checkboxValue1 ??=
                                                            true,
                                                        onChanged:
                                                            (newValue) async {
                                                          setState(() => _model
                                                                  .checkboxValue1 =
                                                              newValue!);
                                                          if (newValue!) {
                                                            _model.photoAdded =
                                                                false;
                                                            setState(() {});
                                                          } else {
                                                            _model.photoAdded =
                                                                true;
                                                            setState(() {});
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'Adione uma foto de fundo personalizada!',
                                                                  style:
                                                                      TextStyle(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                  ),
                                                                ),
                                                                duration: const Duration(
                                                                    milliseconds:
                                                                        4000),
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                              ),
                                                            );
                                                          }
                                                        },
                                                        side: BorderSide(
                                                          width: 2,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                        ),
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        checkColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Usar Fundo Padrão',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  final selectedMedia =
                                                      await selectMediaWithSourceBottomSheet(
                                                    context: context,
                                                    allowPhoto: true,
                                                    includeDimensions: true,
                                                  );
                                                  if (selectedMedia != null &&
                                                      selectedMedia.every((m) =>
                                                          validateFileFormat(
                                                              m.storagePath,
                                                              context))) {
                                                    setState(() =>
                                                        _model.isDataUploading =
                                                            true);
                                                    var selectedUploadedFiles =
                                                        <FFUploadedFile>[];

                                                    var downloadUrls =
                                                        <String>[];
                                                    try {
                                                      selectedUploadedFiles =
                                                          selectedMedia
                                                              .map((m) =>
                                                                  FFUploadedFile(
                                                                    name: m
                                                                        .storagePath
                                                                        .split(
                                                                            '/')
                                                                        .last,
                                                                    bytes:
                                                                        m.bytes,
                                                                    height: m
                                                                        .dimensions
                                                                        ?.height,
                                                                    width: m
                                                                        .dimensions
                                                                        ?.width,
                                                                    blurHash: m
                                                                        .blurHash,
                                                                  ))
                                                              .toList();

                                                      downloadUrls =
                                                          (await Future.wait(
                                                        selectedMedia.map(
                                                          (m) async =>
                                                              await uploadData(
                                                                  m.storagePath,
                                                                  m.bytes),
                                                        ),
                                                      ))
                                                              .where((u) =>
                                                                  u != null)
                                                              .map((u) => u!)
                                                              .toList();
                                                    } finally {
                                                      _model.isDataUploading =
                                                          false;
                                                    }
                                                    if (selectedUploadedFiles
                                                                .length ==
                                                            selectedMedia
                                                                .length &&
                                                        downloadUrls.length ==
                                                            selectedMedia
                                                                .length) {
                                                      setState(() {
                                                        _model.uploadedLocalFile =
                                                            selectedUploadedFiles
                                                                .first;
                                                        _model.uploadedFileUrl =
                                                            downloadUrls.first;
                                                      });
                                                    } else {
                                                      setState(() {});
                                                      return;
                                                    }
                                                  }

                                                  _model.photoAdded = true;
                                                  setState(() {});
                                                  setState(() {
                                                    _model.checkboxValue1 =
                                                        false;
                                                  });
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(10.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Icon(
                                                          Icons.upload,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 48.0,
                                                        ),
                                                        Text(
                                                          'Carregar foto de fundo [A4]',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
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
                                      ],
                                    ),
                                  ),
                                  if (_model.mode == 1)
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .certificadoTextController1,
                                                  focusNode: _model
                                                      .certificadoFocusNode1,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.certificadoTextController1',
                                                    const Duration(milliseconds: 10),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Titulo',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  validator: _model
                                                      .certificadoTextController1Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .certificadoFonteTextController,
                                                  focusNode: _model
                                                      .certificadoFonteFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.certificadoFonteTextController',
                                                    const Duration(
                                                        milliseconds: 2000),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Tamanho da fonte',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  keyboardType:
                                                      const TextInputType
                                                          .numberWithOptions(
                                                          decimal: true),
                                                  validator: _model
                                                      .certificadoFonteTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Cor da fonte',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                final colorPicked1Color =
                                                    await showFFColorPicker(
                                                  context,
                                                  currentColor:
                                                      _model.colorPicked1 ??=
                                                          valueOrDefault<Color>(
                                                    _model.colorPicked1,
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                  ),
                                                  showRecentColors: true,
                                                  allowOpacity: true,
                                                  textColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  secondaryTextColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  primaryButtonBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  primaryButtonTextColor:
                                                      Colors.white,
                                                  primaryButtonBorderColor:
                                                      Colors.transparent,
                                                  displayAsBottomSheet:
                                                      isMobileWidth(context),
                                                );

                                                if (colorPicked1Color !=
                                                    null) {
                                                  safeSetState(() =>
                                                      _model.colorPicked1 =
                                                          colorPicked1Color);
                                                }
                                              },
                                              child: Container(
                                                width: 25.0,
                                                height: 25.0,
                                                decoration: BoxDecoration(
                                                  color: _model.colorPicked1,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  if (_model.mode == 2)
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .antesNomeTextController,
                                                  focusNode:
                                                      _model.antesNomeFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.antesNomeTextController',
                                                    const Duration(milliseconds: 10),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Texto Antes do Name',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  validator: _model
                                                      .antesNomeTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .antesNomeFonteTextController,
                                                  focusNode: _model
                                                      .antesNomeFonteFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.antesNomeFonteTextController',
                                                    const Duration(
                                                        milliseconds: 2000),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Tamanho da fonte',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  keyboardType:
                                                      const TextInputType
                                                          .numberWithOptions(
                                                          decimal: true),
                                                  validator: _model
                                                      .antesNomeFonteTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Cor da fonte',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                final colorPicked2Color =
                                                    await showFFColorPicker(
                                                  context,
                                                  currentColor:
                                                      _model.colorPicked2 ??=
                                                          valueOrDefault<Color>(
                                                    _model.colorPicked2,
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                  ),
                                                  showRecentColors: true,
                                                  allowOpacity: true,
                                                  textColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  secondaryTextColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  primaryButtonBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  primaryButtonTextColor:
                                                      Colors.white,
                                                  primaryButtonBorderColor:
                                                      Colors.transparent,
                                                  displayAsBottomSheet:
                                                      isMobileWidth(context),
                                                );

                                                if (colorPicked2Color !=
                                                    null) {
                                                  safeSetState(() =>
                                                      _model.colorPicked2 =
                                                          colorPicked2Color);
                                                }
                                              },
                                              child: Container(
                                                width: 25.0,
                                                height: 25.0,
                                                decoration: BoxDecoration(
                                                  color: _model.colorPicked2,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  if (_model.mode == 3)
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .aLunoTextController,
                                                  focusNode:
                                                      _model.aLunoFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.aLunoTextController',
                                                    const Duration(milliseconds: 10),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  readOnly: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Nome do Aluno',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  validator: _model
                                                      .aLunoTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .nomeFonteTextController,
                                                  focusNode:
                                                      _model.nomeFonteFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.nomeFonteTextController',
                                                    const Duration(
                                                        milliseconds: 2000),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Tamanho da fonte',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  keyboardType:
                                                      const TextInputType
                                                          .numberWithOptions(
                                                          decimal: true),
                                                  validator: _model
                                                      .nomeFonteTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Cor da fonte',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                final colorPicked3Color =
                                                    await showFFColorPicker(
                                                  context,
                                                  currentColor:
                                                      _model.colorPicked3 ??=
                                                          valueOrDefault<Color>(
                                                    _model.colorPicked3,
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                  ),
                                                  showRecentColors: true,
                                                  allowOpacity: true,
                                                  textColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  secondaryTextColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  primaryButtonBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  primaryButtonTextColor:
                                                      Colors.white,
                                                  primaryButtonBorderColor:
                                                      Colors.transparent,
                                                  displayAsBottomSheet:
                                                      isMobileWidth(context),
                                                );

                                                if (colorPicked3Color !=
                                                    null) {
                                                  safeSetState(() =>
                                                      _model.colorPicked3 =
                                                          colorPicked3Color);
                                                }
                                              },
                                              child: Container(
                                                width: 25.0,
                                                height: 25.0,
                                                decoration: BoxDecoration(
                                                  color: _model.colorPicked3,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  if (_model.mode == 4)
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller:
                                                      _model.prfTextController,
                                                  focusNode:
                                                      _model.prfFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.prfTextController',
                                                    const Duration(milliseconds: 10),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Texto Antes do curso',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  validator: _model
                                                      .prfTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .antesCursoFonteTextController,
                                                  focusNode: _model
                                                      .antesCursoFonteFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.antesCursoFonteTextController',
                                                    const Duration(
                                                        milliseconds: 2000),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Tamanho da fonte',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  keyboardType:
                                                      const TextInputType
                                                          .numberWithOptions(
                                                          decimal: true),
                                                  validator: _model
                                                      .antesCursoFonteTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Cor da fonte',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                final colorPicked4Color =
                                                    await showFFColorPicker(
                                                  context,
                                                  currentColor:
                                                      _model.colorPicked4 ??=
                                                          _model.colorPicked4,
                                                  showRecentColors: true,
                                                  allowOpacity: true,
                                                  textColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  secondaryTextColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  primaryButtonBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  primaryButtonTextColor:
                                                      Colors.white,
                                                  primaryButtonBorderColor:
                                                      Colors.transparent,
                                                  displayAsBottomSheet:
                                                      isMobileWidth(context),
                                                );

                                                if (colorPicked4Color !=
                                                    null) {
                                                  safeSetState(() =>
                                                      _model.colorPicked4 =
                                                          colorPicked4Color);
                                                }
                                              },
                                              child: Container(
                                                width: 25.0,
                                                height: 25.0,
                                                decoration: BoxDecoration(
                                                  color: _model.colorPicked4,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  if (_model.mode == 5)
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .cursoTextController,
                                                  focusNode:
                                                      _model.cursoFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.cursoTextController',
                                                    const Duration(milliseconds: 10),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  readOnly: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Nome do Curso',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  validator: _model
                                                      .cursoTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .cursoFonteTextController,
                                                  focusNode: _model
                                                      .cursoFonteFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.cursoFonteTextController',
                                                    const Duration(
                                                        milliseconds: 2000),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Tamanho da fonte',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  keyboardType:
                                                      const TextInputType
                                                          .numberWithOptions(
                                                          decimal: true),
                                                  validator: _model
                                                      .cursoFonteTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Cor da fonte',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                final colorPicked5Color =
                                                    await showFFColorPicker(
                                                  context,
                                                  currentColor:
                                                      _model.colorPicked5 ??=
                                                          _model.colorPicked5,
                                                  showRecentColors: true,
                                                  allowOpacity: true,
                                                  textColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  secondaryTextColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  primaryButtonBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  primaryButtonTextColor:
                                                      Colors.white,
                                                  primaryButtonBorderColor:
                                                      Colors.transparent,
                                                  displayAsBottomSheet:
                                                      isMobileWidth(context),
                                                );

                                                if (colorPicked5Color !=
                                                    null) {
                                                  safeSetState(() =>
                                                      _model.colorPicked5 =
                                                          colorPicked5Color);
                                                }
                                              },
                                              child: Container(
                                                width: 25.0,
                                                height: 25.0,
                                                decoration: BoxDecoration(
                                                  color: _model.colorPicked5,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  if (_model.mode == 6)
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .antesProfessorTextController,
                                                  focusNode: _model
                                                      .antesProfessorFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.antesProfessorTextController',
                                                    const Duration(milliseconds: 10),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Texto Antes do Professor',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  validator: _model
                                                      .antesProfessorTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .antesProfFonteTextController,
                                                  focusNode: _model
                                                      .antesProfFonteFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.antesProfFonteTextController',
                                                    const Duration(
                                                        milliseconds: 2000),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Tamanho da fonte',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  keyboardType:
                                                      const TextInputType
                                                          .numberWithOptions(
                                                          decimal: true),
                                                  validator: _model
                                                      .antesProfFonteTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Cor da fonte',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                final colorPicked6Color =
                                                    await showFFColorPicker(
                                                  context,
                                                  currentColor:
                                                      _model.colorPicked6 ??=
                                                          _model.colorPicked6,
                                                  showRecentColors: true,
                                                  allowOpacity: true,
                                                  textColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  secondaryTextColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  primaryButtonBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  primaryButtonTextColor:
                                                      Colors.white,
                                                  primaryButtonBorderColor:
                                                      Colors.transparent,
                                                  displayAsBottomSheet:
                                                      isMobileWidth(context),
                                                );

                                                if (colorPicked6Color !=
                                                    null) {
                                                  safeSetState(() =>
                                                      _model.colorPicked6 =
                                                          colorPicked6Color);
                                                }
                                              },
                                              child: Container(
                                                width: 25.0,
                                                height: 25.0,
                                                decoration: BoxDecoration(
                                                  color: _model.colorPicked6,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  if (_model.mode == 7)
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .pRofessorTextController,
                                                  focusNode:
                                                      _model.pRofessorFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.pRofessorTextController',
                                                    const Duration(milliseconds: 10),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  readOnly: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Nome do Professor',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  validator: _model
                                                      .pRofessorTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .profFonteTextController,
                                                  focusNode:
                                                      _model.profFonteFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.profFonteTextController',
                                                    const Duration(
                                                        milliseconds: 2000),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Tamanho da fonte',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  keyboardType:
                                                      const TextInputType
                                                          .numberWithOptions(
                                                          decimal: true),
                                                  validator: _model
                                                      .profFonteTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Cor da fonte',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                final colorPicked7Color =
                                                    await showFFColorPicker(
                                                  context,
                                                  currentColor:
                                                      _model.colorPicked7 ??=
                                                          _model.colorPicked7,
                                                  showRecentColors: true,
                                                  allowOpacity: true,
                                                  textColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  secondaryTextColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  primaryButtonBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  primaryButtonTextColor:
                                                      Colors.white,
                                                  primaryButtonBorderColor:
                                                      Colors.transparent,
                                                  displayAsBottomSheet:
                                                      isMobileWidth(context),
                                                );

                                                if (colorPicked7Color !=
                                                    null) {
                                                  safeSetState(() =>
                                                      _model.colorPicked7 =
                                                          colorPicked7Color);
                                                }
                                              },
                                              child: Container(
                                                width: 25.0,
                                                height: 25.0,
                                                decoration: BoxDecoration(
                                                  color: _model.colorPicked7,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  if (_model.mode == 8)
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .antesdataTextController,
                                                  focusNode:
                                                      _model.antesdataFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.antesdataTextController',
                                                    const Duration(milliseconds: 10),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Texto antes da data',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  validator: _model
                                                      .antesdataTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .antesDataFonteTextController,
                                                  focusNode: _model
                                                      .antesDataFonteFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.antesDataFonteTextController',
                                                    const Duration(
                                                        milliseconds: 2000),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Tamanho da fonte',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  keyboardType:
                                                      const TextInputType
                                                          .numberWithOptions(
                                                          decimal: true),
                                                  validator: _model
                                                      .antesDataFonteTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Cor da fonte',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                final colorPicked8Color =
                                                    await showFFColorPicker(
                                                  context,
                                                  currentColor:
                                                      _model.colorPicked8 ??=
                                                          _model.colorPicked8,
                                                  showRecentColors: true,
                                                  allowOpacity: true,
                                                  textColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  secondaryTextColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  primaryButtonBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  primaryButtonTextColor:
                                                      Colors.white,
                                                  primaryButtonBorderColor:
                                                      Colors.transparent,
                                                  displayAsBottomSheet:
                                                      isMobileWidth(context),
                                                );

                                                if (colorPicked8Color !=
                                                    null) {
                                                  safeSetState(() =>
                                                      _model.colorPicked8 =
                                                          colorPicked8Color);
                                                }
                                              },
                                              child: Container(
                                                width: 25.0,
                                                height: 25.0,
                                                decoration: BoxDecoration(
                                                  color: _model.colorPicked8,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  if (_model.mode == 9)
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller:
                                                      _model.dataTextController,
                                                  focusNode:
                                                      _model.dataFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.dataTextController',
                                                    const Duration(milliseconds: 10),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  readOnly: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Data',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  validator: _model
                                                      .dataTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .dataFonteTextController,
                                                  focusNode:
                                                      _model.dataFonteFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.dataFonteTextController',
                                                    const Duration(
                                                        milliseconds: 2000),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Tamanho da fonte',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  keyboardType:
                                                      const TextInputType
                                                          .numberWithOptions(
                                                          decimal: true),
                                                  validator: _model
                                                      .dataFonteTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Cor da fonte',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                final colorPicked9Color =
                                                    await showFFColorPicker(
                                                  context,
                                                  currentColor:
                                                      _model.colorPicked9 ??=
                                                          _model.colorPicked9,
                                                  showRecentColors: true,
                                                  allowOpacity: true,
                                                  textColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  secondaryTextColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  primaryButtonBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  primaryButtonTextColor:
                                                      Colors.white,
                                                  primaryButtonBorderColor:
                                                      Colors.transparent,
                                                  displayAsBottomSheet:
                                                      isMobileWidth(context),
                                                );

                                                if (colorPicked9Color !=
                                                    null) {
                                                  safeSetState(() =>
                                                      _model.colorPicked9 =
                                                          colorPicked9Color);
                                                }
                                              },
                                              child: Container(
                                                width: 25.0,
                                                height: 25.0,
                                                decoration: BoxDecoration(
                                                  color: _model.colorPicked9,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  if (_model.mode == 10)
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .antesDuracaoTextController,
                                                  focusNode: _model
                                                      .antesDuracaoFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.antesDuracaoTextController',
                                                    const Duration(milliseconds: 10),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Texto antes da duração',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  validator: _model
                                                      .antesDuracaoTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .antesDuracaoFonteTextController,
                                                  focusNode: _model
                                                      .antesDuracaoFonteFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.antesDuracaoFonteTextController',
                                                    const Duration(
                                                        milliseconds: 2000),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Tamanho da fonte',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  keyboardType:
                                                      const TextInputType
                                                          .numberWithOptions(
                                                          decimal: true),
                                                  validator: _model
                                                      .antesDuracaoFonteTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Cor da fonte',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                final colorPicked10Color =
                                                    await showFFColorPicker(
                                                  context,
                                                  currentColor:
                                                      _model.colorPicked10 ??=
                                                          _model.colorPicked10,
                                                  showRecentColors: true,
                                                  allowOpacity: true,
                                                  textColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  secondaryTextColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  primaryButtonBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  primaryButtonTextColor:
                                                      Colors.white,
                                                  primaryButtonBorderColor:
                                                      Colors.transparent,
                                                  displayAsBottomSheet:
                                                      isMobileWidth(context),
                                                );

                                                if (colorPicked10Color !=
                                                    null) {
                                                  safeSetState(() =>
                                                      _model.colorPicked10 =
                                                          colorPicked10Color);
                                                }
                                              },
                                              child: Container(
                                                width: 25.0,
                                                height: 25.0,
                                                decoration: BoxDecoration(
                                                  color: _model.colorPicked10,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  if (_model.mode == 11)
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .certificadoTextController2,
                                                  focusNode: _model
                                                      .certificadoFocusNode2,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.certificadoTextController2',
                                                    const Duration(milliseconds: 10),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  readOnly: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Duração',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  validator: _model
                                                      .certificadoTextController2Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .duracaoFonteTextController,
                                                  focusNode: _model
                                                      .duracaoFonteFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.duracaoFonteTextController',
                                                    const Duration(
                                                        milliseconds: 2000),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Tamanho da fonte',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  keyboardType:
                                                      const TextInputType
                                                          .numberWithOptions(
                                                          decimal: true),
                                                  validator: _model
                                                      .duracaoFonteTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Cor da fonte',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                final colorPicked11Color =
                                                    await showFFColorPicker(
                                                  context,
                                                  currentColor:
                                                      _model.colorPicked11 ??=
                                                          _model.colorPicked11,
                                                  showRecentColors: true,
                                                  allowOpacity: true,
                                                  textColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  secondaryTextColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  primaryButtonBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  primaryButtonTextColor:
                                                      Colors.white,
                                                  primaryButtonBorderColor:
                                                      Colors.transparent,
                                                  displayAsBottomSheet:
                                                      isMobileWidth(context),
                                                );

                                                if (colorPicked11Color !=
                                                    null) {
                                                  safeSetState(() =>
                                                      _model.colorPicked11 =
                                                          colorPicked11Color);
                                                }
                                              },
                                              child: Container(
                                                width: 25.0,
                                                height: 25.0,
                                                decoration: BoxDecoration(
                                                  color: _model.colorPicked11,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  if (_model.mode == 12)
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .powerediDokeyTextController,
                                                  focusNode: _model
                                                      .powerediDokeyFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.powerediDokeyTextController',
                                                    const Duration(milliseconds: 10),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  readOnly: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Dê credibilidade ao seu certificado!',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  validator: _model
                                                      .powerediDokeyTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .idokeyFonteTextController,
                                                  focusNode: _model
                                                      .idokeyFonteFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.idokeyFonteTextController',
                                                    const Duration(
                                                        milliseconds: 2000),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Tamanho da fonte',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  keyboardType:
                                                      const TextInputType
                                                          .numberWithOptions(
                                                          decimal: true),
                                                  validator: _model
                                                      .idokeyFonteTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Cor da fonte',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                final colorPicked12Color =
                                                    await showFFColorPicker(
                                                  context,
                                                  currentColor:
                                                      _model.colorPicked12 ??=
                                                          _model.colorPicked12,
                                                  showRecentColors: true,
                                                  allowOpacity: true,
                                                  textColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  secondaryTextColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  primaryButtonBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  primaryButtonTextColor:
                                                      Colors.white,
                                                  primaryButtonBorderColor:
                                                      Colors.transparent,
                                                  displayAsBottomSheet:
                                                      isMobileWidth(context),
                                                );

                                                if (colorPicked12Color !=
                                                    null) {
                                                  safeSetState(() =>
                                                      _model.colorPicked12 =
                                                          colorPicked12Color);
                                                }
                                              },
                                              child: Container(
                                                width: 25.0,
                                                height: 25.0,
                                                decoration: BoxDecoration(
                                                  color: valueOrDefault<Color>(
                                                    _model.colorPicked12,
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Visivel?',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Container(
                                              width: 25.0,
                                              height: 25.0,
                                              decoration: const BoxDecoration(),
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    visualDensity:
                                                        VisualDensity.compact,
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                ),
                                                child: Checkbox(
                                                  key: const ValueKey('false'),
                                                  value: _model
                                                      .checkboxValue2 ??= true,
                                                  onChanged: (newValue) async {
                                                    setState(() =>
                                                        _model.checkboxValue2 =
                                                            newValue!);
                                                  },
                                                  side: BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                  ),
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  checkColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .info,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  if (_model.mode == 13)
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .keyseguranaTextController,
                                                  focusNode: _model
                                                      .keyseguranaFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.keyseguranaTextController',
                                                    const Duration(milliseconds: 10),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  readOnly: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Key de segurança',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  validator: _model
                                                      .keyseguranaTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .keyFonteTextController,
                                                  focusNode:
                                                      _model.keyFonteFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.keyFonteTextController',
                                                    const Duration(
                                                        milliseconds: 2000),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: const [
                                                    AutofillHints.email
                                                  ],
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Tamanho da fonte',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFFF5963),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                  keyboardType:
                                                      const TextInputType
                                                          .numberWithOptions(
                                                          decimal: true),
                                                  validator: _model
                                                      .keyFonteTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Cor da fonte',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                final colorPicked13Color =
                                                    await showFFColorPicker(
                                                  context,
                                                  currentColor:
                                                      _model.colorPicked13 ??=
                                                          _model.colorPicked13,
                                                  showRecentColors: true,
                                                  allowOpacity: true,
                                                  textColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  secondaryTextColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  primaryButtonBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  primaryButtonTextColor:
                                                      Colors.white,
                                                  primaryButtonBorderColor:
                                                      Colors.transparent,
                                                  displayAsBottomSheet:
                                                      isMobileWidth(context),
                                                );

                                                if (colorPicked13Color !=
                                                    null) {
                                                  safeSetState(() =>
                                                      _model.colorPicked13 =
                                                          colorPicked13Color);
                                                }
                                              },
                                              child: Container(
                                                width: 25.0,
                                                height: 25.0,
                                                decoration: BoxDecoration(
                                                  color: valueOrDefault<Color>(
                                                    _model.colorPicked13,
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () async {
                                          if (_model.nameTextController.text ==
                                                  '') {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Por favor, adicione o nome do template!',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .warning,
                                              ),
                                            );
                                          } else {
                                            await TemplateCertificadoRecord
                                                .collection
                                                .doc()
                                                .set(
                                                    createTemplateCertificadoRecordData(
                                                  certificado: _model
                                                      .certificadoTextController1
                                                      .text,
                                                  certificadoCOR:
                                                      functions.colorToString(
                                                          _model.colorPicked1),
                                                  certificadoSize:
                                                      double.tryParse(_model
                                                          .certificadoFonteTextController
                                                          .text),
                                                  templateName: _model
                                                      .nameTextController.text,
                                                  preName: _model
                                                      .antesNomeTextController
                                                      .text,
                                                  preNameCOR:
                                                      functions.colorToString(
                                                          _model.colorPicked2),
                                                  preNameSIZE: double.tryParse(
                                                      _model
                                                          .antesNomeFonteTextController
                                                          .text),
                                                  aluno: 'ALUNO',
                                                  alunoCOR:
                                                      functions.colorToString(
                                                          _model.colorPicked3),
                                                  alunoSIZE: double.tryParse(
                                                      _model
                                                          .nomeFonteTextController
                                                          .text),
                                                  preCurso: _model
                                                      .prfTextController.text,
                                                  preCursoCOR:
                                                      functions.colorToString(
                                                          _model.colorPicked4),
                                                  preCursoSIZE: double.tryParse(
                                                      _model
                                                          .antesCursoFonteTextController
                                                          .text),
                                                  curso: 'CURSO',
                                                  cursoCOR:
                                                      functions.colorToString(
                                                          _model.colorPicked5),
                                                  cursoSize: double.tryParse(_model
                                                      .cursoFonteTextController
                                                      .text),
                                                  preProf: _model
                                                      .antesProfessorTextController
                                                      .text,
                                                  preProfCOR:
                                                      functions.colorToString(
                                                          _model.colorPicked6),
                                                  preProfSIZE: double.tryParse(
                                                      _model
                                                          .antesProfFonteTextController
                                                          .text),
                                                  prof: 'PROFESSOR',
                                                  profCOR:
                                                      functions.colorToString(
                                                          _model.colorPicked7),
                                                  profSIZE: double.tryParse(_model
                                                      .profFonteTextController
                                                      .text),
                                                  preDate: _model
                                                      .antesdataTextController
                                                      .text,
                                                  preDateCOR:
                                                      functions.colorToString(
                                                          _model.colorPicked8),
                                                  preDateSIZE: double.tryParse(
                                                      _model
                                                          .antesDataFonteTextController
                                                          .text),
                                                  data: 'DATA',
                                                  dataCOR:
                                                      functions.colorToString(
                                                          _model.colorPicked9),
                                                  dataSIZE: double.tryParse(_model
                                                      .dataFonteTextController
                                                      .text),
                                                  preDuracao: _model
                                                      .antesDuracaoTextController
                                                      .text,
                                                  preDuracaoCOR:
                                                      functions.colorToString(
                                                          _model.colorPicked10),
                                                  preDuracaoSize:
                                                      double.tryParse(_model
                                                          .antesDuracaoFonteTextController
                                                          .text),
                                                  duracao: 'DURAÇÃO',
                                                  duracaoCOR:
                                                      functions.colorToString(
                                                          _model.colorPicked11),
                                                  duracaoSIZE: double.tryParse(
                                                      _model
                                                          .duracaoFonteTextController
                                                          .text),
                                                  iDokeySize: double.tryParse(_model
                                                      .idokeyFonteTextController
                                                      .text),
                                                  isDefaultImage:
                                                      _model.checkboxValue1,
                                                  userID: currentUserReference,
                                                  showIDokey:
                                                      _model.checkboxValue2,
                                                  image: _model.uploadedFileUrl,
                                                  imageWidth: _model
                                                      .uploadedLocalFile.width,
                                                  imageHeight: _model
                                                      .uploadedLocalFile.height,
                                                ));
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Template criado com sucesso!',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            );
                                          }
                                        },
                                        text: 'Criar Template',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ],
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
  }
}
