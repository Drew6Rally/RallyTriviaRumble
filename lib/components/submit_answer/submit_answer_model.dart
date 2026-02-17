import '/components/submit_answer_form_component_widget.dart';
import '/app/app_theme.dart';
import '/app/app_utils.dart';
import 'submit_answer_widget.dart' show SubmitAnswerWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SubmitAnswerModel extends AppModel<SubmitAnswerWidget> {
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
