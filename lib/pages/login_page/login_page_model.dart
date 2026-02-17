import '/auth/firebase_auth/auth_util.dart';
import '/app/app_theme.dart';
import '/app/app_utils.dart';
import '/app/app_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends AppModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for userName-login widget.
  FocusNode? userNameLoginFocusNode;
  TextEditingController? userNameLoginTextController;
  String? Function(BuildContext, String?)? userNameLoginTextControllerValidator;
  // State field(s) for password-login widget.
  FocusNode? passwordLoginFocusNode;
  TextEditingController? passwordLoginTextController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordLoginVisibility = false;
  }

  @override
  void dispose() {
    userNameLoginFocusNode?.dispose();
    userNameLoginTextController?.dispose();

    passwordLoginFocusNode?.dispose();
    passwordLoginTextController?.dispose();
  }
}
