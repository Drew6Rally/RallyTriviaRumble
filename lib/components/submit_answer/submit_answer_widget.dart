import '/components/submit_answer_form_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'submit_answer_model.dart';
export 'submit_answer_model.dart';

class SubmitAnswerWidget extends StatefulWidget {
  const SubmitAnswerWidget({super.key});

  @override
  State<SubmitAnswerWidget> createState() => _SubmitAnswerWidgetState();
}

class _SubmitAnswerWidgetState extends State<SubmitAnswerWidget> {
  late SubmitAnswerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubmitAnswerModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return wrapWithModel(
      model: _model.submitAnswerFormComponentModel,
      updateCallback: () => safeSetState(() {}),
      child: const SubmitAnswerFormComponentWidget(),
    );
  }
}
