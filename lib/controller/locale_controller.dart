import 'package:flutter/material.dart';
import 'package:flutter_localization_using_getx/localization/storage_service.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  final storage = Get.find<StorageService>();
  final RxString local = Get.locale.toString().obs;

  final Map<String, dynamic> optionsLocales = {
    'en_US': {
      'languageCode': 'en',
      'countryCode': 'US',
      'description': 'English',
    },
    'bn_BD': {
      'languageCode': 'bn',
      'countryCode': 'BD',
      'description': 'Bengali',
    },
    'hi_IN': {
      'languageCode': 'hi',
      'countryCode': 'IN',
      'description': 'Hindi',
    },
  };

  void updateLocale(String key) {
    final String languageCode = optionsLocales[key]['languageCode'];
    final String countryCode = optionsLocales[key]['countryCode'];
    Get.updateLocale(Locale(languageCode, countryCode));
    local.value = Get.locale.toString();
    storage.write("languageCode", languageCode);
    storage.write("countryCode", countryCode);
  }
}
