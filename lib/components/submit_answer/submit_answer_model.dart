import '/components/submit_answer_form_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'submit_answer_widget.dart' show SubmitAnswerWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SubmitAnswerModel extends FlutterFlowModel<SubmitAnswerWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for submitAnswerFormComponent component.
  late SubmitAnswerFormComponentModel submitAnswerFormComponentModel;

  @override
  void initState(BuildContext context) {
    submitAnswerFormComponentModel =
        createModel(context, () => SubmitAnswerFormComponentModel());
  }

  @override
  void dispose() {
    submitAnswerFormComponentModel.dispose();
  }
}
