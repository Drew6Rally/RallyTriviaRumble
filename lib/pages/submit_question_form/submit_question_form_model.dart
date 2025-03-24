import '/components/submit_answer_form_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'submit_question_form_widget.dart' show SubmitQuestionFormWidget;
import 'package:flutter/material.dart';

class SubmitQuestionFormModel
    extends FlutterFlowModel<SubmitQuestionFormWidget> {
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
