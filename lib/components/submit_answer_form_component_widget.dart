import '/backend/supabase/supabase.dart';
import '/app/app_icon_button.dart';
import '/app/app_theme.dart';
import '/app/app_utils.dart';
import '/app/app_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'submit_answer_form_component_model.dart';
export 'submit_answer_form_component_model.dart';

/// An form for users to submit answers
class SubmitAnswerFormComponentWidget extends StatefulWidget {
  const SubmitAnswerFormComponentWidget({super.key});

  @override
  State<SubmitAnswerFormComponentWidget> createState() =>
      _SubmitAnswerFormComponentWidgetState();
}

class _SubmitAnswerFormComponentWidgetState
    extends State<SubmitAnswerFormComponentWidget> {
  late SubmitAnswerFormComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubmitAnswerFormComponentModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(
      () async {
        safeSetState(() {
          _model.textController?.text = '';
          _model.textFieldFocusNode?.requestFocus();
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _model.textController?.selection =
                const TextSelection.collapsed(offset: 0);
          });
        });
      },
    );
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {
          _model.textController?.text = AppLocalizations.of(context).getText(
            '3wuv9tnz' /* Enter Answer Here... */,
          );
        }));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<AppState>();

    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 1000.0,
              height: 784.1,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3.0,
                    color: Color(0x33000000),
                    offset: Offset(
                      0.0,
                      1.0,
                    ),
                    spreadRadius: 0.0,
                  )
                ],
                gradient: LinearGradient(
                  colors: [
                    AppTheme.of(context).primaryBackground,
                    Color(0x3AF2A384)
                  ],
                  stops: [0.0, 1.0],
                  begin: AlignmentDirectional(0.94, -1.0),
                  end: AlignmentDirectional(-0.94, 1.0),
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(0.0),
                ),
              ),
              child: Stack(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(1.0, -1.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: AppTheme.of(context)
                                    .primaryBackground,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: AppIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30.0,
                                    buttonSize: 48.0,
                                    icon: Icon(
                                      Icons.close_rounded,
                                      color: AppTheme.of(context)
                                          .secondaryText,
                                      size: 25.0,
                                    ),
                                    onPressed: () async {
                                      context.pop();
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.5, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: 200.0,
                              child: TextFormField(
                                controller: _model.textController,
                                focusNode: _model.textFieldFocusNode,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelStyle: AppTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: AppLocalizations.of(context).getText(
                                    '3rxm2jh4' /* TextField */,
                                  ),
                                  hintStyle: AppTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: AppTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: AppTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: AppTheme.of(context)
                                      .secondaryBackground,
                                ),
                                style: AppTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Manrope',
                                      color: AppTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                    ),
                                cursorColor:
                                    AppTheme.of(context).primaryText,
                                validator: _model.textControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 50.0, 0.0, 0.0),
                          child: Text(
                            AppLocalizations.of(context).getText(
                              '95a8lg9f' /* Submit Your Response */,
                            ),
                            style: AppTheme.of(context)
                                .displayMedium
                                .override(
                                  fontFamily: 'Urbanist',
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  dateTimeFormat(
                                    "yMd",
                                    getCurrentTimestamp,
                                    locale: AppLocalizations.of(context)
                                        .languageCode,
                                  ),
                                  '9/15/1999',
                                ),
                                textAlign: TextAlign.center,
                                style: AppTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Urbanist',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontStyle: FontStyle.italic,
                                      decoration: TextDecoration.underline,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Align(
          alignment: AlignmentDirectional(0.0, 0.85),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Opacity(
                opacity: 0.8,
                child: AppButton(
                  onPressed: () async {
                    await PlayerAnswerSubmissionsTable().insert({
                      'Timestamp': dateTimeFormat(
                        "yMd",
                        getCurrentTimestamp,
                        locale: AppLocalizations.of(context).languageCode,
                      ),
                      'Player Name': AppState().currentUserDisplayName,
                      'Final Answer:': _model.textController.text,
                    });

                    context.pushNamed(
                      HomeWidget.routeName,
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.topToBottom,
                          duration: Duration(milliseconds: 1000),
                        ),
                      },
                    );
                  },
                  text: AppLocalizations.of(context).getText(
                    'r64mlpgk' /* Confirm */,
                  ),
                  options: AppButtonOptions(
                    width: 166.1,
                    height: 38.51,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconAlignment: IconAlignment.start,
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: AppTheme.of(context).secondaryBackground,
                    textStyle:
                        AppTheme.of(context).displayLarge.override(
                              fontFamily: 'Urbanist',
                              color: AppTheme.of(context).primaryText,
                              fontSize: 32.0,
                              letterSpacing: 0.0,
                              lineHeight: 1.1,
                            ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: AppTheme.of(context).secondaryBackground,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
