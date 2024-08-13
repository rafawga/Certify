import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'new_plans_copy_model.dart';
export 'new_plans_copy_model.dart';

class NewPlansCopyWidget extends StatefulWidget {
  const NewPlansCopyWidget({super.key});

  @override
  State<NewPlansCopyWidget> createState() => _NewPlansCopyWidgetState();
}

class _NewPlansCopyWidgetState extends State<NewPlansCopyWidget> {
  late NewPlansCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewPlansCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'NewPlansCopy',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: FFButtonWidget(
                onPressed: () async {
                  await PlansRecord.collection.doc().set({
                    ...createPlansRecordData(
                      name: 'Basic',
                      priceMonthly: 29.90,
                      priceYearly: 299.00,
                      strikePriceMonthly: 49.90,
                      strikePriceYearly: 400.0,
                      subtitle: 'Ideal para você',
                      coursesAllowed: 50,
                      studentsPerCourse: 30,
                      isRecommended: false,
                      order: 0,
                    ),
                    ...mapToFirestore(
                      {
                        'Feauture': ['Oi tudo bem'],
                      },
                    ),
                  });
                },
                text: 'Button',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
        ));
  }
}
