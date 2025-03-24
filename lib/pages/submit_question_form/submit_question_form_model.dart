import '/components/submit_answer_form_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'submit_question_form_widget.dart' show SubmitQuestionFormWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
