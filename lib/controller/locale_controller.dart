import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleController extends GetxController {
  Locale? _locale;
  SharedPreferences? _prefs;

  LocaleProvider() {
    _locale = Locale('en'); // Set the default language
    _initPreferences();
  }

  Locale? get locale => _locale;

  void _initPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    final languageCode = _prefs?.getString('languageCode');
    if (languageCode != null) {
      _locale = Locale(languageCode);
      update();
    }
  }

  Future<void> setLanguage(String languageCode) async {
    _locale = Locale(languageCode);
    await _prefs?.setString('languageCode', languageCode);
    update();
  }
}
