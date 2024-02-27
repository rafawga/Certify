import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/project/components/navbar/navbar_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_template_model.dart';
export 'new_template_model.dart';

class NewTemplateWidget extends StatefulWidget {
  const NewTemplateWidget({super.key});

  @override
  State<NewTemplateWidget> createState() => _NewTemplateWidgetState();
}

class _NewTemplateWidgetState extends State<NewTemplateWidget> {
  late NewTemplateModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewTemplateModel());

    _model.nameController ??= TextEditingController();
    _model.nameFocusNode ??= FocusNode();

    _model.certificadoController1 ??= TextEditingController();
    _model.certificadoFocusNode1 ??= FocusNode();

    _model.certificadoFonteController1 ??= TextEditingController();
    _model.certificadoFonteFocusNode1 ??= FocusNode();

    _model.certificadoController2 ??= TextEditingController();
    _model.certificadoFocusNode2 ??= FocusNode();

    _model.certificadoFonteController2 ??= TextEditingController();
    _model.certificadoFonteFocusNode2 ??= FocusNode();

    _model.certificadoController3 ??= TextEditingController();
    _model.certificadoFocusNode3 ??= FocusNode();

    _model.certificadoFonteController3 ??= TextEditingController();
    _model.certificadoFonteFocusNode3 ??= FocusNode();

    _model.certificadoController4 ??= TextEditingController();
    _model.certificadoFocusNode4 ??= FocusNode();

    _model.certificadoFonteController4 ??= TextEditingController();
    _model.certificadoFonteFocusNode4 ??= FocusNode();

    _model.certificadoController5 ??= TextEditingController();
    _model.certificadoFocusNode5 ??= FocusNode();

    _model.certificadoFonteController5 ??= TextEditingController();
    _model.certificadoFonteFocusNode5 ??= FocusNode();

    _model.certificadoController6 ??= TextEditingController();
    _model.certificadoFocusNode6 ??= FocusNode();

    _model.certificadoFonteController6 ??= TextEditingController();
    _model.certificadoFonteFocusNode6 ??= FocusNode();

    _model.certificadoController7 ??= TextEditingController();
    _model.certificadoFocusNode7 ??= FocusNode();

    _model.certificadoFonteController7 ??= TextEditingController();
    _model.certificadoFonteFocusNode7 ??= FocusNode();

    _model.certificadoController8 ??= TextEditingController();
    _model.certificadoFocusNode8 ??= FocusNode();

    _model.certificadoFonteController8 ??= TextEditingController();
    _model.certificadoFonteFocusNode8 ??= FocusNode();

    _model.certificadoController9 ??= TextEditingController();
    _model.certificadoFocusNode9 ??= FocusNode();

    _model.certificadoFonteController9 ??= TextEditingController();
    _model.certificadoFonteFocusNode9 ??= FocusNode();

    _model.certificadoController10 ??= TextEditingController();
    _model.certificadoFocusNode10 ??= FocusNode();

    _model.certificadoFonteController10 ??= TextEditingController();
    _model.certificadoFonteFocusNode10 ??= FocusNode();

    _model.certificadoController11 ??= TextEditingController();
    _model.certificadoFocusNode11 ??= FocusNode();

    _model.certificadoFonteController11 ??= TextEditingController();
    _model.certificadoFonteFocusNode11 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.certificadoController1?.text = 'Certificado';
          _model.certificadoFonteController1?.text = '23';
          _model.certificadoController2?.text = 'Certificamos que';
          _model.certificadoFonteController2?.text = '16';
          _model.certificadoController3?.text = 'NOME DO ALUNO';
          _model.certificadoFonteController3?.text = '31';
          _model.certificadoController4?.text =
              'Concluiu com sucesso a formação';
          _model.certificadoFonteController4?.text = '16';
          _model.certificadoController5?.text = 'NOME DO CURSO';
          _model.certificadoFonteController5?.text = '16';
          _model.certificadoController6?.text = 'Ministrado pelo profissional';
          _model.certificadoFonteController6?.text = '16';
          _model.certificadoController7?.text = 'Nome do Professor';
          _model.certificadoFonteController7?.text = '16';
          _model.certificadoController8?.text = 'na data de';
          _model.certificadoFonteController8?.text = '16';
          _model.certificadoController9?.text =
              'DATA DE EMISSÃO DO CERTIFICADO';
          _model.certificadoFonteController9?.text = '16';
          _model.certificadoController10?.text = 'com uma duração de';
          _model.certificadoFonteController10?.text = '16';
          _model.certificadoController11?.text = '[DURÃÇAO] horas';
          _model.certificadoFonteController11?.text = '16';
        }));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.navbarModel,
                  updateCallback: () => setState(() {}),
                  child: NavbarWidget(
                    tabAtual: 4,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      constraints: BoxConstraints(
                        maxWidth: 1170.0,
                      ),
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 30.0, 20.0, 20.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 12.0, 12.0, 25.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 1.0,
                                            color: Color(0x33000000),
                                            offset: Offset(0.0, 2.0),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 12.0, 0.0),
                                                  child: Icon(
                                                    Icons.feedback_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 24.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Área do produtor / Criar novo template',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 16.0,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
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
                                                      scaffoldKey.currentState!
                                                          .openDrawer();
                                                    },
                                                    child: Icon(
                                                      Icons.menu_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 35.0,
                                                    ),
                                                  ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                ))
                                                  Icon(
                                                    Icons.lightbulb_outlined,
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
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller: _model.nameController,
                                      focusNode: _model.nameFocusNode,
                                      autofocus: true,
                                      autofillHints: [AutofillHints.email],
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Nome do template',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF4B39EF),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Plus Jakarta Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.0,
                                      ),
                                      validator: _model.nameControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 565.0,
                                    height: 400.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/certificate1.png',
                                        ).image,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          50.0, 75.0, 50.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Flexible(
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    setState(() {
                                                      _model.mode = 1;
                                                    });
                                                  },
                                                  child: Text(
                                                    _model
                                                        .certificadoController1
                                                        .text,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: _model
                                                              .colorPicked1,
                                                          fontSize: double
                                                              .tryParse(_model
                                                                  .certificadoFonteController1
                                                                  .text),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 40.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Flexible(
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      setState(() {
                                                        _model.mode = 2;
                                                      });
                                                    },
                                                    child: Text(
                                                      _model
                                                          .certificadoController2
                                                          .text,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: _model
                                                                    .colorPicked2,
                                                                fontSize: double
                                                                    .tryParse(_model
                                                                        .certificadoFonteController2
                                                                        .text),
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    _model.mode = 3;
                                                  });
                                                },
                                                child: Text(
                                                  'NOME DO ALUNO',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            _model.colorPicked3,
                                                        fontSize: double
                                                            .tryParse(_model
                                                                .certificadoFonteController3
                                                                .text),
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              // You will have to add an action on this rich text to go to your login page.
                                              Flexible(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 12.0, 0.0, 12.0),
                                                  child: RichText(
                                                    textScaleFactor:
                                                        MediaQuery.of(context)
                                                            .textScaleFactor,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: _model
                                                              .certificadoController4
                                                              .text,
                                                          style: TextStyle(
                                                            color: _model
                                                                .colorPicked4,
                                                            fontSize: double
                                                                .tryParse(_model
                                                                    .certificadoFonteController4
                                                                    .text),
                                                          ),
                                                          mouseCursor:
                                                              SystemMouseCursors
                                                                  .click,
                                                          recognizer:
                                                              TapGestureRecognizer()
                                                                ..onTap =
                                                                    () async {
                                                                  setState(() {
                                                                    _model.mode =
                                                                        4;
                                                                  });
                                                                },
                                                        ),
                                                        TextSpan(
                                                          text:
                                                              '[Nome do Curso] ',
                                                          style: TextStyle(
                                                            color: _model
                                                                .colorPicked5,
                                                            fontSize: double
                                                                .tryParse(_model
                                                                    .certificadoFonteController5
                                                                    .text),
                                                          ),
                                                          mouseCursor:
                                                              SystemMouseCursors
                                                                  .click,
                                                          recognizer:
                                                              TapGestureRecognizer()
                                                                ..onTap =
                                                                    () async {
                                                                  setState(() {
                                                                    _model.mode =
                                                                        5;
                                                                  });
                                                                },
                                                        ),
                                                        TextSpan(
                                                          text: _model
                                                              .certificadoController6
                                                              .text,
                                                          style: TextStyle(
                                                            color: _model
                                                                .colorPicked6,
                                                            fontSize: double
                                                                .tryParse(_model
                                                                    .certificadoController6
                                                                    .text),
                                                          ),
                                                          mouseCursor:
                                                              SystemMouseCursors
                                                                  .click,
                                                          recognizer:
                                                              TapGestureRecognizer()
                                                                ..onTap =
                                                                    () async {
                                                                  setState(() {
                                                                    _model.mode =
                                                                        6;
                                                                  });
                                                                },
                                                        ),
                                                        TextSpan(
                                                          text:
                                                              '[NOME DO PROFESSOR]',
                                                          style: TextStyle(
                                                            color: _model
                                                                .colorPicked7,
                                                            fontSize: double
                                                                .tryParse(_model
                                                                    .certificadoFonteController7
                                                                    .text),
                                                          ),
                                                          mouseCursor:
                                                              SystemMouseCursors
                                                                  .click,
                                                          recognizer:
                                                              TapGestureRecognizer()
                                                                ..onTap =
                                                                    () async {
                                                                  setState(() {
                                                                    _model.mode =
                                                                        7;
                                                                  });
                                                                },
                                                        ),
                                                        TextSpan(
                                                          text: _model
                                                              .certificadoController8
                                                              .text,
                                                          style: TextStyle(
                                                            color: _model
                                                                .colorPicked8,
                                                            fontSize: double
                                                                .tryParse(_model
                                                                    .certificadoFonteController8
                                                                    .text),
                                                          ),
                                                          mouseCursor:
                                                              SystemMouseCursors
                                                                  .click,
                                                          recognizer:
                                                              TapGestureRecognizer()
                                                                ..onTap =
                                                                    () async {
                                                                  setState(() {
                                                                    _model.mode =
                                                                        8;
                                                                  });
                                                                },
                                                        ),
                                                        TextSpan(
                                                          text:
                                                              '[DATA DE EMISSÃO]',
                                                          style: TextStyle(
                                                            color: _model
                                                                .colorPicked9,
                                                            fontSize: double
                                                                .tryParse(_model
                                                                    .certificadoFonteController9
                                                                    .text),
                                                          ),
                                                          mouseCursor:
                                                              SystemMouseCursors
                                                                  .click,
                                                          recognizer:
                                                              TapGestureRecognizer()
                                                                ..onTap =
                                                                    () async {
                                                                  setState(() {
                                                                    _model.mode =
                                                                        9;
                                                                  });
                                                                },
                                                        ),
                                                        TextSpan(
                                                          text: _model
                                                              .certificadoController10
                                                              .text,
                                                          style: TextStyle(
                                                            color: _model
                                                                .colorPicked10,
                                                            fontSize: double
                                                                .tryParse(_model
                                                                    .certificadoFonteController10
                                                                    .text),
                                                          ),
                                                          mouseCursor:
                                                              SystemMouseCursors
                                                                  .click,
                                                          recognizer:
                                                              TapGestureRecognizer()
                                                                ..onTap =
                                                                    () async {
                                                                  setState(() {
                                                                    _model.mode =
                                                                        10;
                                                                  });
                                                                },
                                                        ),
                                                        TextSpan(
                                                          text:
                                                              '[Duracao] horas',
                                                          style: TextStyle(
                                                            color: _model
                                                                .colorPicked11,
                                                            fontSize: double
                                                                .tryParse(_model
                                                                    .certificadoFonteController11
                                                                    .text),
                                                          ),
                                                        )
                                                      ],
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            color: Color(
                                                                0xFF101213),
                                                            fontSize: 14.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.upload,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 48.0,
                                            ),
                                            Text(
                                              'Carregar foto de fundo [A4]',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 14.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              if (_model.mode == 1)
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller:
                                                  _model.certificadoController1,
                                              focusNode:
                                                  _model.certificadoFocusNode1,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.certificadoController1',
                                                Duration(milliseconds: 10),
                                                () => setState(() {}),
                                              ),
                                              autofocus: true,
                                              autofillHints: [
                                                AutofillHints.email
                                              ],
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Titulo',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF4B39EF),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                              validator: _model
                                                  .certificadoController1Validator
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
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller: _model
                                                  .certificadoFonteController1,
                                              focusNode: _model
                                                  .certificadoFonteFocusNode1,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.certificadoFonteController1',
                                                Duration(milliseconds: 2000),
                                                () => setState(() {}),
                                              ),
                                              autofocus: true,
                                              autofillHints: [
                                                AutofillHints.email
                                              ],
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Titulo',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF4B39EF),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                              keyboardType: const TextInputType
                                                  .numberWithOptions(
                                                  decimal: true),
                                              validator: _model
                                                  .certificadoFonteController1Validator
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
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            final _colorPicked1Color =
                                                await showFFColorPicker(
                                              context,
                                              currentColor:
                                                  _model.colorPicked1 ??=
                                                      _model.colorPicked1,
                                              showRecentColors: true,
                                              allowOpacity: true,
                                              textColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              secondaryTextColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              primaryButtonBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              primaryButtonTextColor:
                                                  Colors.white,
                                              primaryButtonBorderColor:
                                                  Colors.transparent,
                                              displayAsBottomSheet:
                                                  isMobileWidth(context),
                                            );

                                            if (_colorPicked1Color != null) {
                                              safeSetState(() =>
                                                  _model.colorPicked1 =
                                                      _colorPicked1Color);
                                            }
                                          },
                                          child: Container(
                                            width: 25.0,
                                            height: 25.0,
                                            decoration: BoxDecoration(
                                              color: _model.colorPicked1,
                                              borderRadius:
                                                  BorderRadius.circular(2.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller:
                                                  _model.certificadoController2,
                                              focusNode:
                                                  _model.certificadoFocusNode2,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.certificadoController2',
                                                Duration(milliseconds: 10),
                                                () => setState(() {}),
                                              ),
                                              autofocus: true,
                                              autofillHints: [
                                                AutofillHints.email
                                              ],
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    'Texto Antes do Name',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF4B39EF),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                              validator: _model
                                                  .certificadoController2Validator
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
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller: _model
                                                  .certificadoFonteController2,
                                              focusNode: _model
                                                  .certificadoFonteFocusNode2,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.certificadoFonteController2',
                                                Duration(milliseconds: 2000),
                                                () => setState(() {}),
                                              ),
                                              autofocus: true,
                                              autofillHints: [
                                                AutofillHints.email
                                              ],
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Titulo',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF4B39EF),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                              keyboardType: const TextInputType
                                                  .numberWithOptions(
                                                  decimal: true),
                                              validator: _model
                                                  .certificadoFonteController2Validator
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
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            final _colorPicked2Color =
                                                await showFFColorPicker(
                                              context,
                                              currentColor:
                                                  _model.colorPicked2 ??=
                                                      _model.colorPicked2,
                                              showRecentColors: true,
                                              allowOpacity: true,
                                              textColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              secondaryTextColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              primaryButtonBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              primaryButtonTextColor:
                                                  Colors.white,
                                              primaryButtonBorderColor:
                                                  Colors.transparent,
                                              displayAsBottomSheet:
                                                  isMobileWidth(context),
                                            );

                                            if (_colorPicked2Color != null) {
                                              safeSetState(() =>
                                                  _model.colorPicked2 =
                                                      _colorPicked2Color);
                                            }
                                          },
                                          child: Container(
                                            width: 25.0,
                                            height: 25.0,
                                            decoration: BoxDecoration(
                                              color: _model.colorPicked2,
                                              borderRadius:
                                                  BorderRadius.circular(2.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller:
                                                  _model.certificadoController3,
                                              focusNode:
                                                  _model.certificadoFocusNode3,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.certificadoController3',
                                                Duration(milliseconds: 10),
                                                () => setState(() {}),
                                              ),
                                              autofocus: true,
                                              autofillHints: [
                                                AutofillHints.email
                                              ],
                                              readOnly: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Nome do Aluno',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF4B39EF),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                              validator: _model
                                                  .certificadoController3Validator
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
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller: _model
                                                  .certificadoFonteController3,
                                              focusNode: _model
                                                  .certificadoFonteFocusNode3,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.certificadoFonteController3',
                                                Duration(milliseconds: 2000),
                                                () => setState(() {}),
                                              ),
                                              autofocus: true,
                                              autofillHints: [
                                                AutofillHints.email
                                              ],
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Titulo',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF4B39EF),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                              keyboardType: const TextInputType
                                                  .numberWithOptions(
                                                  decimal: true),
                                              validator: _model
                                                  .certificadoFonteController3Validator
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
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            final _colorPicked3Color =
                                                await showFFColorPicker(
                                              context,
                                              currentColor:
                                                  _model.colorPicked3 ??=
                                                      _model.colorPicked3,
                                              showRecentColors: true,
                                              allowOpacity: true,
                                              textColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              secondaryTextColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              primaryButtonBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              primaryButtonTextColor:
                                                  Colors.white,
                                              primaryButtonBorderColor:
                                                  Colors.transparent,
                                              displayAsBottomSheet:
                                                  isMobileWidth(context),
                                            );

                                            if (_colorPicked3Color != null) {
                                              safeSetState(() =>
                                                  _model.colorPicked3 =
                                                      _colorPicked3Color);
                                            }
                                          },
                                          child: Container(
                                            width: 25.0,
                                            height: 25.0,
                                            decoration: BoxDecoration(
                                              color: _model.colorPicked3,
                                              borderRadius:
                                                  BorderRadius.circular(2.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller:
                                                  _model.certificadoController4,
                                              focusNode:
                                                  _model.certificadoFocusNode4,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.certificadoController4',
                                                Duration(milliseconds: 10),
                                                () => setState(() {}),
                                              ),
                                              autofocus: true,
                                              autofillHints: [
                                                AutofillHints.email
                                              ],
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    'Texto Antes do curso',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF4B39EF),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                              validator: _model
                                                  .certificadoController4Validator
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
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller: _model
                                                  .certificadoFonteController4,
                                              focusNode: _model
                                                  .certificadoFonteFocusNode4,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.certificadoFonteController4',
                                                Duration(milliseconds: 2000),
                                                () => setState(() {}),
                                              ),
                                              autofocus: true,
                                              autofillHints: [
                                                AutofillHints.email
                                              ],
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Titulo',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF4B39EF),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                              keyboardType: const TextInputType
                                                  .numberWithOptions(
                                                  decimal: true),
                                              validator: _model
                                                  .certificadoFonteController4Validator
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
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            final _colorPicked4Color =
                                                await showFFColorPicker(
                                              context,
                                              currentColor:
                                                  _model.colorPicked4 ??=
                                                      _model.colorPicked4,
                                              showRecentColors: true,
                                              allowOpacity: true,
                                              textColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              secondaryTextColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              primaryButtonBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              primaryButtonTextColor:
                                                  Colors.white,
                                              primaryButtonBorderColor:
                                                  Colors.transparent,
                                              displayAsBottomSheet:
                                                  isMobileWidth(context),
                                            );

                                            if (_colorPicked4Color != null) {
                                              safeSetState(() =>
                                                  _model.colorPicked4 =
                                                      _colorPicked4Color);
                                            }
                                          },
                                          child: Container(
                                            width: 25.0,
                                            height: 25.0,
                                            decoration: BoxDecoration(
                                              color: _model.colorPicked4,
                                              borderRadius:
                                                  BorderRadius.circular(2.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller:
                                                  _model.certificadoController5,
                                              focusNode:
                                                  _model.certificadoFocusNode5,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.certificadoController5',
                                                Duration(milliseconds: 10),
                                                () => setState(() {}),
                                              ),
                                              autofocus: true,
                                              autofillHints: [
                                                AutofillHints.email
                                              ],
                                              readOnly: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Nome do Curso',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF4B39EF),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                              validator: _model
                                                  .certificadoController5Validator
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
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller: _model
                                                  .certificadoFonteController5,
                                              focusNode: _model
                                                  .certificadoFonteFocusNode5,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.certificadoFonteController5',
                                                Duration(milliseconds: 2000),
                                                () => setState(() {}),
                                              ),
                                              autofocus: true,
                                              autofillHints: [
                                                AutofillHints.email
                                              ],
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Titulo',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF4B39EF),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                              keyboardType: const TextInputType
                                                  .numberWithOptions(
                                                  decimal: true),
                                              validator: _model
                                                  .certificadoFonteController5Validator
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
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            final _colorPicked5Color =
                                                await showFFColorPicker(
                                              context,
                                              currentColor:
                                                  _model.colorPicked5 ??=
                                                      _model.colorPicked5,
                                              showRecentColors: true,
                                              allowOpacity: true,
                                              textColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              secondaryTextColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              primaryButtonBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              primaryButtonTextColor:
                                                  Colors.white,
                                              primaryButtonBorderColor:
                                                  Colors.transparent,
                                              displayAsBottomSheet:
                                                  isMobileWidth(context),
                                            );

                                            if (_colorPicked5Color != null) {
                                              safeSetState(() =>
                                                  _model.colorPicked5 =
                                                      _colorPicked5Color);
                                            }
                                          },
                                          child: Container(
                                            width: 25.0,
                                            height: 25.0,
                                            decoration: BoxDecoration(
                                              color: _model.colorPicked5,
                                              borderRadius:
                                                  BorderRadius.circular(2.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller:
                                                  _model.certificadoController6,
                                              focusNode:
                                                  _model.certificadoFocusNode6,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.certificadoController6',
                                                Duration(milliseconds: 10),
                                                () => setState(() {}),
                                              ),
                                              autofocus: true,
                                              autofillHints: [
                                                AutofillHints.email
                                              ],
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    'Texto Antes do Professor',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF4B39EF),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                              validator: _model
                                                  .certificadoController6Validator
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
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller: _model
                                                  .certificadoFonteController6,
                                              focusNode: _model
                                                  .certificadoFonteFocusNode6,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.certificadoFonteController6',
                                                Duration(milliseconds: 2000),
                                                () => setState(() {}),
                                              ),
                                              autofocus: true,
                                              autofillHints: [
                                                AutofillHints.email
                                              ],
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Titulo',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF4B39EF),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                              keyboardType: const TextInputType
                                                  .numberWithOptions(
                                                  decimal: true),
                                              validator: _model
                                                  .certificadoFonteController6Validator
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
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            final _colorPicked6Color =
                                                await showFFColorPicker(
                                              context,
                                              currentColor:
                                                  _model.colorPicked6 ??=
                                                      _model.colorPicked6,
                                              showRecentColors: true,
                                              allowOpacity: true,
                                              textColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              secondaryTextColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              primaryButtonBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              primaryButtonTextColor:
                                                  Colors.white,
                                              primaryButtonBorderColor:
                                                  Colors.transparent,
                                              displayAsBottomSheet:
                                                  isMobileWidth(context),
                                            );

                                            if (_colorPicked6Color != null) {
                                              safeSetState(() =>
                                                  _model.colorPicked6 =
                                                      _colorPicked6Color);
                                            }
                                          },
                                          child: Container(
                                            width: 25.0,
                                            height: 25.0,
                                            decoration: BoxDecoration(
                                              color: _model.colorPicked6,
                                              borderRadius:
                                                  BorderRadius.circular(2.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller:
                                                  _model.certificadoController7,
                                              focusNode:
                                                  _model.certificadoFocusNode7,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.certificadoController7',
                                                Duration(milliseconds: 10),
                                                () => setState(() {}),
                                              ),
                                              autofocus: true,
                                              autofillHints: [
                                                AutofillHints.email
                                              ],
                                              readOnly: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Nome do Professor',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF4B39EF),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                              validator: _model
                                                  .certificadoController7Validator
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
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller: _model
                                                  .certificadoFonteController7,
                                              focusNode: _model
                                                  .certificadoFonteFocusNode7,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.certificadoFonteController7',
                                                Duration(milliseconds: 2000),
                                                () => setState(() {}),
                                              ),
                                              autofocus: true,
                                              autofillHints: [
                                                AutofillHints.email
                                              ],
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Titulo',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF4B39EF),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                              keyboardType: const TextInputType
                                                  .numberWithOptions(
                                                  decimal: true),
                                              validator: _model
                                                  .certificadoFonteController7Validator
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
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            final _colorPicked7Color =
                                                await showFFColorPicker(
                                              context,
                                              currentColor:
                                                  _model.colorPicked7 ??=
                                                      _model.colorPicked7,
                                              showRecentColors: true,
                                              allowOpacity: true,
                                              textColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              secondaryTextColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              primaryButtonBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              primaryButtonTextColor:
                                                  Colors.white,
                                              primaryButtonBorderColor:
                                                  Colors.transparent,
                                              displayAsBottomSheet:
                                                  isMobileWidth(context),
                                            );

                                            if (_colorPicked7Color != null) {
                                              safeSetState(() =>
                                                  _model.colorPicked7 =
                                                      _colorPicked7Color);
                                            }
                                          },
                                          child: Container(
                                            width: 25.0,
                                            height: 25.0,
                                            decoration: BoxDecoration(
                                              color: _model.colorPicked7,
                                              borderRadius:
                                                  BorderRadius.circular(2.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller:
                                                  _model.certificadoController8,
                                              focusNode:
                                                  _model.certificadoFocusNode8,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.certificadoController8',
                                                Duration(milliseconds: 10),
                                                () => setState(() {}),
                                              ),
                                              autofocus: true,
                                              autofillHints: [
                                                AutofillHints.email
                                              ],
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    'Texto antes da data',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF4B39EF),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                              validator: _model
                                                  .certificadoController8Validator
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
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller: _model
                                                  .certificadoFonteController8,
                                              focusNode: _model
                                                  .certificadoFonteFocusNode8,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.certificadoFonteController8',
                                                Duration(milliseconds: 2000),
                                                () => setState(() {}),
                                              ),
                                              autofocus: true,
                                              autofillHints: [
                                                AutofillHints.email
                                              ],
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Titulo',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF4B39EF),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                              keyboardType: const TextInputType
                                                  .numberWithOptions(
                                                  decimal: true),
                                              validator: _model
                                                  .certificadoFonteController8Validator
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
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            final _colorPicked8Color =
                                                await showFFColorPicker(
                                              context,
                                              currentColor:
                                                  _model.colorPicked8 ??=
                                                      _model.colorPicked8,
                                              showRecentColors: true,
                                              allowOpacity: true,
                                              textColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              secondaryTextColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              primaryButtonBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              primaryButtonTextColor:
                                                  Colors.white,
                                              primaryButtonBorderColor:
                                                  Colors.transparent,
                                              displayAsBottomSheet:
                                                  isMobileWidth(context),
                                            );

                                            if (_colorPicked8Color != null) {
                                              safeSetState(() =>
                                                  _model.colorPicked8 =
                                                      _colorPicked8Color);
                                            }
                                          },
                                          child: Container(
                                            width: 25.0,
                                            height: 25.0,
                                            decoration: BoxDecoration(
                                              color: _model.colorPicked8,
                                              borderRadius:
                                                  BorderRadius.circular(2.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller:
                                                  _model.certificadoController9,
                                              focusNode:
                                                  _model.certificadoFocusNode9,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.certificadoController9',
                                                Duration(milliseconds: 10),
                                                () => setState(() {}),
                                              ),
                                              autofocus: true,
                                              autofillHints: [
                                                AutofillHints.email
                                              ],
                                              readOnly: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Data',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF4B39EF),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                              validator: _model
                                                  .certificadoController9Validator
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
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller: _model
                                                  .certificadoFonteController9,
                                              focusNode: _model
                                                  .certificadoFonteFocusNode9,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.certificadoFonteController9',
                                                Duration(milliseconds: 2000),
                                                () => setState(() {}),
                                              ),
                                              autofocus: true,
                                              autofillHints: [
                                                AutofillHints.email
                                              ],
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Titulo',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF4B39EF),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                              keyboardType: const TextInputType
                                                  .numberWithOptions(
                                                  decimal: true),
                                              validator: _model
                                                  .certificadoFonteController9Validator
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
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            final _colorPicked9Color =
                                                await showFFColorPicker(
                                              context,
                                              currentColor:
                                                  _model.colorPicked9 ??=
                                                      _model.colorPicked9,
                                              showRecentColors: true,
                                              allowOpacity: true,
                                              textColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              secondaryTextColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              primaryButtonBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              primaryButtonTextColor:
                                                  Colors.white,
                                              primaryButtonBorderColor:
                                                  Colors.transparent,
                                              displayAsBottomSheet:
                                                  isMobileWidth(context),
                                            );

                                            if (_colorPicked9Color != null) {
                                              safeSetState(() =>
                                                  _model.colorPicked9 =
                                                      _colorPicked9Color);
                                            }
                                          },
                                          child: Container(
                                            width: 25.0,
                                            height: 25.0,
                                            decoration: BoxDecoration(
                                              color: _model.colorPicked9,
                                              borderRadius:
                                                  BorderRadius.circular(2.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller: _model
                                                  .certificadoController10,
                                              focusNode:
                                                  _model.certificadoFocusNode10,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.certificadoController10',
                                                Duration(milliseconds: 10),
                                                () => setState(() {}),
                                              ),
                                              autofocus: true,
                                              autofillHints: [
                                                AutofillHints.email
                                              ],
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    'Texto antes da duração',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF4B39EF),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                              validator: _model
                                                  .certificadoController10Validator
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
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller: _model
                                                  .certificadoFonteController10,
                                              focusNode: _model
                                                  .certificadoFonteFocusNode10,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.certificadoFonteController10',
                                                Duration(milliseconds: 2000),
                                                () => setState(() {}),
                                              ),
                                              autofocus: true,
                                              autofillHints: [
                                                AutofillHints.email
                                              ],
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Titulo',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF4B39EF),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                              keyboardType: const TextInputType
                                                  .numberWithOptions(
                                                  decimal: true),
                                              validator: _model
                                                  .certificadoFonteController10Validator
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
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            final _colorPicked10Color =
                                                await showFFColorPicker(
                                              context,
                                              currentColor:
                                                  _model.colorPicked10 ??=
                                                      _model.colorPicked10,
                                              showRecentColors: true,
                                              allowOpacity: true,
                                              textColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              secondaryTextColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              primaryButtonBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              primaryButtonTextColor:
                                                  Colors.white,
                                              primaryButtonBorderColor:
                                                  Colors.transparent,
                                              displayAsBottomSheet:
                                                  isMobileWidth(context),
                                            );

                                            if (_colorPicked10Color != null) {
                                              safeSetState(() =>
                                                  _model.colorPicked10 =
                                                      _colorPicked10Color);
                                            }
                                          },
                                          child: Container(
                                            width: 25.0,
                                            height: 25.0,
                                            decoration: BoxDecoration(
                                              color: _model.colorPicked10,
                                              borderRadius:
                                                  BorderRadius.circular(2.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller: _model
                                                  .certificadoController11,
                                              focusNode:
                                                  _model.certificadoFocusNode11,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.certificadoController11',
                                                Duration(milliseconds: 10),
                                                () => setState(() {}),
                                              ),
                                              autofocus: true,
                                              autofillHints: [
                                                AutofillHints.email
                                              ],
                                              readOnly: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Duração',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF4B39EF),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                              validator: _model
                                                  .certificadoController11Validator
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
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller: _model
                                                  .certificadoFonteController11,
                                              focusNode: _model
                                                  .certificadoFonteFocusNode11,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.certificadoFonteController11',
                                                Duration(milliseconds: 2000),
                                                () => setState(() {}),
                                              ),
                                              autofocus: true,
                                              autofillHints: [
                                                AutofillHints.email
                                              ],
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Titulo',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF4B39EF),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                              keyboardType: const TextInputType
                                                  .numberWithOptions(
                                                  decimal: true),
                                              validator: _model
                                                  .certificadoFonteController11Validator
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
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            final _colorPicked11Color =
                                                await showFFColorPicker(
                                              context,
                                              currentColor:
                                                  _model.colorPicked11 ??=
                                                      _model.colorPicked11,
                                              showRecentColors: true,
                                              allowOpacity: true,
                                              textColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              secondaryTextColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              primaryButtonBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              primaryButtonTextColor:
                                                  Colors.white,
                                              primaryButtonBorderColor:
                                                  Colors.transparent,
                                              displayAsBottomSheet:
                                                  isMobileWidth(context),
                                            );

                                            if (_colorPicked11Color != null) {
                                              safeSetState(() =>
                                                  _model.colorPicked11 =
                                                      _colorPicked11Color);
                                            }
                                          },
                                          child: Container(
                                            width: 25.0,
                                            height: 25.0,
                                            decoration: BoxDecoration(
                                              color: _model.colorPicked11,
                                              borderRadius:
                                                  BorderRadius.circular(2.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Salvar Template',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
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
    );
  }
}
