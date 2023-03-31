import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

import 'preferences.dart';

class SharedPreferenceHelper {
  // shared pref instance
  final SharedPreferences _sharedPreference;

  // constructor
  SharedPreferenceHelper(this._sharedPreference);

  // Login:---------------------------------------------------------------------

  Future<bool> saveRootAddress(String userId) async {
    return _sharedPreference.setString(Preferences.rootAddress, userId);
  }

  String? rootAddress() {
    return _sharedPreference.getString(Preferences.rootAddress);
  }

  Future<bool> removeRootAddress() async {
    return _sharedPreference.remove(Preferences.rootAddress);
  }

  // Login:---------------------------------------------------------------------

  Future<bool> saveIsLoggedIn(bool value) async {
    return _sharedPreference.setBool(Preferences.isLoggedIn, value);
  }

  bool isLoggedIn() {
    return _sharedPreference.getBool(Preferences.isLoggedIn) ?? false;
  }

  Future<bool> saveAuthToken(String authToken) async {
    return _sharedPreference.setString(Preferences.authToken, authToken);
  }

  String? authToken() {
    return _sharedPreference.getString(Preferences.authToken);
  }

  Future<bool> removeAuthToken() async {
    return _sharedPreference.remove(Preferences.authToken);
  }

  Future<bool> saveUserId(int userId) async {
    return _sharedPreference.setInt(Preferences.userId, userId);
  }

  int? userId() {
    return _sharedPreference.getInt(Preferences.userId);
  }

  Future<bool> removeUserId() async {
    return _sharedPreference.remove(Preferences.userId);
  }

  Future<bool> saveUserName(String userName) async {
    return _sharedPreference.setString(Preferences.userName, userName);
  }

  String? userName() {
    return _sharedPreference.getString(Preferences.userName);
  }

  Future<bool> removeUserName() async {
    return _sharedPreference.remove(Preferences.userName);
  }

  //organization unit: -------------------------------------------------------------------
  Future<bool> saveOuId(String id) async {
    return _sharedPreference.setString(Preferences.ouId, id);
  }

  String? ouId() {
    return _sharedPreference.getString(Preferences.ouId);
  }

  Future<bool> removeOuId() async {
    return _sharedPreference.remove(Preferences.ouId);
  }

  Future<bool> saveAssociatedOuIds(String id) async {
    return _sharedPreference.setString(Preferences.associatedOuIds, id);
  }

  String? associatedOuId() {
    return _sharedPreference.getString(Preferences.associatedOuIds);
  }

  Future<bool> removeAssociatedOuIds() async {
    return _sharedPreference.remove(Preferences.associatedOuIds);
  }

  // Future<bool> saveParentId(int parentId) async {
  //   return _sharedPreference.setInt(Preferences.parentId, parentId);
  // }

  // Future<bool> removeParentId(int parentId) async {
  //   return _sharedPreference.remove(Preferences.parentId);
  // }

  //synchronisation time : ------------------------------------------------------------
  Future<bool> saveSyncTime(String syncTime) async {
    return _sharedPreference.setString(Preferences.isSyncedTime, syncTime);
  }

  String? syncTime() {
    return _sharedPreference.getString(Preferences.isSyncedTime);
  }

  Future<bool> removeSyncTime() async {
    return _sharedPreference.remove(Preferences.isSyncedTime);
  }
}
