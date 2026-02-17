import '/backend/supabase/supabase.dart';
import '/app/app_icon_button.dart';
import '/app/app_theme.dart';
import '/app/app_utils.dart';
import '/app/app_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'submit_question_form_component_widget.dart'
    show SubmitQuestionFormComponentWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SubmitQuestionFormComponentModel
    extends AppModel<SubmitQuestionFormComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
