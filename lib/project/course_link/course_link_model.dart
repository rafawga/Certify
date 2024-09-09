import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'course_link_widget.dart' show CourseLinkWidget;
import 'package:flutter/material.dart';

class CourseLinkModel extends FlutterFlowModel<CourseLinkWidget> {
  ///  Local state fields for this component.

  bool hasLink = false;

  bool activeLink = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Read Document] action in CourseLink widget.
  CursosRecord? cursoSelecionado;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
