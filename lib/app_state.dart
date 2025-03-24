import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _currentUserDisplayName = '';
  String get currentUserDisplayName => _currentUserDisplayName;
  set currentUserDisplayName(String value) {
    _currentUserDisplayName = value;
  }

  String _currentUserEmail = '';
  String get currentUserEmail => _currentUserEmail;
  set currentUserEmail(String value) {
    _currentUserEmail = value;
  }

  String _currentUserProfilePicture = '';
  String get currentUserProfilePicture => _currentUserProfilePicture;
  set currentUserProfilePicture(String value) {
    _currentUserProfilePicture = value;
  }

  String _currentUserFullName = '';
  String get currentUserFullName => _currentUserFullName;
  set currentUserFullName(String value) {
    _currentUserFullName = value;
  }

  final _todaysQuestionDataManager =
      FutureRequestManager<List<PlayerQuestionSubsRow>>();
  Future<List<PlayerQuestionSubsRow>> todaysQuestionData({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<PlayerQuestionSubsRow>> Function() requestFn,
  }) =>
      _todaysQuestionDataManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTodaysQuestionDataCache() => _todaysQuestionDataManager.clear();
  void clearTodaysQuestionDataCacheKey(String? uniqueKey) =>
      _todaysQuestionDataManager.clearRequest(uniqueKey);
}
