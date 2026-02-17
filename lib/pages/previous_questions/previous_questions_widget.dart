import '/backend/supabase/supabase.dart';
import '/app/app_icon_button.dart';
import '/app/app_theme.dart';
import '/app/app_utils.dart';
import '/app/app_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'previous_questions_model.dart';
export 'previous_questions_model.dart';

class PreviousQuestionsWidget extends StatefulWidget {
  const PreviousQuestionsWidget({super.key});

  static String routeName = 'previousQuestions';
  static String routePath = '/previousQuestions';

  @override
  State<PreviousQuestionsWidget> createState() =>
      _PreviousQuestionsWidgetState();
}

class _PreviousQuestionsWidgetState extends State<PreviousQuestionsWidget> {
  late PreviousQuestionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PreviousQuestionsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: AppTheme.of(context).primary,
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pop();
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: AppTheme.of(context).textColor,
            size: 32.0,
          ),
        ),
        title: Text(
          AppLocalizations.of(context).getText(
            'j0yzgf4n' /* Question Details */,
          ),
          style: AppTheme.of(context).titleSmall.override(
                fontFamily: 'Manrope',
                letterSpacing: 0.0,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
            child: AppIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              buttonSize: 46.0,
              icon: Icon(
                Icons.edit_outlined,
                color: AppTheme.of(context).textColor,
                size: 25.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppTheme.of(context).primary,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          AppLocalizations.of(context).getText(
                            'zv72ekdw' /* Amount */,
                          ),
                          style: AppTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Manrope',
                                color: AppTheme.of(context).textColor,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 4.0, 20.0, 20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          AppLocalizations.of(context).getText(
                            '5yks2usp' /*  */,
                          ),
                          style: AppTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Urbanist',
                                color: AppTheme.of(context).textColor,
                                fontSize: 36.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    AppLocalizations.of(context).getText(
                      '0rjyjwed' /* Question */,
                    ),
                    style: AppTheme.of(context).bodyMedium.override(
                          fontFamily: 'Manrope',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 4.0, 20.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    AppLocalizations.of(context).getText(
                      'i1s9668v' /*  */,
                    ),
                    style: AppTheme.of(context).headlineSmall.override(
                          fontFamily: 'Urbanist',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    AppLocalizations.of(context).getText(
                      'eeyn6dk2' /* When */,
                    ),
                    style: AppTheme.of(context).bodyMedium.override(
                          fontFamily: 'Manrope',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 4.0, 20.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  AppLocalizations.of(context).getText(
                    'w8ud9b3f' /*  */,
                  ),
                  style: AppTheme.of(context).bodySmall.override(
                        fontFamily: 'Manrope',
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 4.0, 20.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: Text(
                      AppLocalizations.of(context).getText(
                        'lccxx6eu' /* Category */,
                      ),
                      style: AppTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 4.0, 20.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    AppLocalizations.of(context).getText(
                      'hoftu4iw' /*  */,
                    ),
                    style: AppTheme.of(context).bodySmall.override(
                          fontFamily: 'Manrope',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    AppLocalizations.of(context).getText(
                      'jzyax4hn' /* Submitted By */,
                    ),
                    style: AppTheme.of(context).bodyMedium.override(
                          fontFamily: 'Manrope',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: AppTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: AppTheme.of(context).primary,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(2.0),
                              child: FutureBuilder<List<ProfilesRow>>(
                                future: ProfilesTable().querySingleRow(
                                  queryFn: (q) => q,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            AppTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<ProfilesRow> userAvatarProfilesRowList =
                                      snapshot.data!;

                                  final userAvatarProfilesRow =
                                      userAvatarProfilesRowList.isNotEmpty
                                          ? userAvatarProfilesRowList.first
                                          : null;

                                  return Container(
                                    width: 40.0,
                                    height: 40.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      userAvatarProfilesRow!.profilePictureUrl!,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FutureBuilder<List<PlayerQuestionSubsRow>>(
                                      future: PlayerQuestionSubsTable()
                                          .querySingleRow(
                                        queryFn: (q) => q,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  AppTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<PlayerQuestionSubsRow>
                                            textPlayerQuestionSubsRowList =
                                            snapshot.data!;

                                        final textPlayerQuestionSubsRow =
                                            textPlayerQuestionSubsRowList
                                                    .isNotEmpty
                                                ? textPlayerQuestionSubsRowList
                                                    .first
                                                : null;

                                        return Text(
                                          AppLocalizations.of(context).getText(
                                            '7ad0fa2b' /*  */,
                                          ),
                                          style: AppTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Urbanist',
                                                letterSpacing: 0.0,
                                              ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                Text(
                                  AppLocalizations.of(context).getText(
                                    'hps85dvd' /* user.name@domainname.com */,
                                  ),
                                  style: AppTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: AppTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
