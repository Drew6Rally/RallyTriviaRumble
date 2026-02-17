import '/app/app_theme.dart';
import '/app/app_utils.dart';
import '/app/app_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'notifications_settings_model.dart';
export 'notifications_settings_model.dart';

class NotificationsSettingsWidget extends StatefulWidget {
  const NotificationsSettingsWidget({super.key});

  static String routeName = 'notificationsSettings';
  static String routePath = '/notificationsSettings';

  @override
  State<NotificationsSettingsWidget> createState() =>
      _NotificationsSettingsWidgetState();
}

class _NotificationsSettingsWidgetState
    extends State<NotificationsSettingsWidget> {
  late NotificationsSettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationsSettingsModel());
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
      backgroundColor: AppTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: AppTheme.of(context).secondaryBackground,
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
            color: AppTheme.of(context).grayLight,
            size: 32.0,
          ),
        ),
        title: Text(
          AppLocalizations.of(context).getText(
            'sc4ff4ce' /* Notifications */,
          ),
          style: AppTheme.of(context).headlineSmall.override(
                fontFamily: 'Urbanist',
                letterSpacing: 0.0,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: Image.asset(
              'assets/images/login_bg@2x.png',
            ).image,
          ),
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
                        'r72zvrv5' /* Choose what notifcations you w... */,
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
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
              child: Material(
                color: Colors.transparent,
                child: SwitchListTile.adaptive(
                  value: _model.switchListTileValue1 ??= true,
                  onChanged: (newValue) async {
                    safeSetState(() => _model.switchListTileValue1 = newValue!);
                  },
                  title: Text(
                    AppLocalizations.of(context).getText(
                      'gjygkr0n' /* Push Notifications */,
                    ),
                    style: AppTheme.of(context).headlineSmall.override(
                          fontFamily: 'Urbanist',
                          letterSpacing: 0.0,
                        ),
                  ),
                  subtitle: Text(
                    AppLocalizations.of(context).getText(
                      '3y3yhxbk' /* Receive Push notifications fro... */,
                    ),
                    style: AppTheme.of(context).bodySmall.override(
                          fontFamily: 'Manrope',
                          letterSpacing: 0.0,
                        ),
                  ),
                  tileColor: AppTheme.of(context).secondaryBackground,
                  activeColor: AppTheme.of(context).tertiary,
                  activeTrackColor: AppTheme.of(context).primary,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: SwitchListTile.adaptive(
                value: _model.switchListTileValue2 ??= true,
                onChanged: (newValue) async {
                  safeSetState(() => _model.switchListTileValue2 = newValue!);
                },
                title: Text(
                  AppLocalizations.of(context).getText(
                    '1ytebj35' /* Email Notifications */,
                  ),
                  style: AppTheme.of(context).headlineSmall.override(
                        fontFamily: 'Urbanist',
                        letterSpacing: 0.0,
                      ),
                ),
                subtitle: Text(
                  AppLocalizations.of(context).getText(
                    '9lvh5nst' /* Receive email notifications fr... */,
                  ),
                  style: AppTheme.of(context).bodySmall.override(
                        fontFamily: 'Manrope',
                        letterSpacing: 0.0,
                      ),
                ),
                tileColor: AppTheme.of(context).secondaryBackground,
                activeColor: AppTheme.of(context).tertiary,
                activeTrackColor: AppTheme.of(context).primary,
                dense: false,
                controlAffinity: ListTileControlAffinity.trailing,
                contentPadding:
                    EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: SwitchListTile.adaptive(
                value: _model.switchListTileValue3 ??= true,
                onChanged: (newValue) async {
                  safeSetState(() => _model.switchListTileValue3 = newValue!);
                },
                title: Text(
                  AppLocalizations.of(context).getText(
                    '69d2j74u' /* Location Services */,
                  ),
                  style: AppTheme.of(context).headlineSmall.override(
                        fontFamily: 'Urbanist',
                        letterSpacing: 0.0,
                      ),
                ),
                subtitle: Text(
                  AppLocalizations.of(context).getText(
                    '3k8cuv0d' /* Allow us to track your locatio... */,
                  ),
                  style: AppTheme.of(context).bodySmall.override(
                        fontFamily: 'Manrope',
                        letterSpacing: 0.0,
                      ),
                ),
                tileColor: AppTheme.of(context).secondaryBackground,
                activeColor: AppTheme.of(context).tertiary,
                activeTrackColor: AppTheme.of(context).primary,
                dense: false,
                controlAffinity: ListTileControlAffinity.trailing,
                contentPadding:
                    EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
              child: AppButton(
                onPressed: () async {
                  context.pop();
                },
                text: AppLocalizations.of(context).getText(
                  'isgrgbfs' /* Save Changes */,
                ),
                options: AppButtonOptions(
                  width: 190.0,
                  height: 50.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: AppTheme.of(context).primary,
                  textStyle: AppTheme.of(context).titleSmall.override(
                        fontFamily: 'Manrope',
                        color: AppTheme.of(context).textColor,
                        letterSpacing: 0.0,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
