import '/components/submit_answer_form_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'submit_answer_form_widget.dart' show SubmitAnswerFormWidget;
import 'package:flutter/material.dart';

class SubmitAnswerFormModel extends FlutterFlowModel<SubmitAnswerFormWidget> {
  ///  State fields for stateful widgets in this page.

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
