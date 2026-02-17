import '/components/submit_answer_form_component_widget.dart';
import '/app/app_animations.dart';
import '/app/app_icon_button.dart';
import '/app/app_theme.dart';
import '/app/app_utils.dart';
import '/app/app_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'submit_answer_form_widget.dart' show SubmitAnswerFormWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SubmitAnswerFormModel extends AppModel<SubmitAnswerFormWidget> {
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
