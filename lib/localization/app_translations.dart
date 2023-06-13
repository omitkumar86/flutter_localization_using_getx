import 'package:flutter_localization_using_getx/localization/language/bangla.dart';
import 'package:flutter_localization_using_getx/localization/language/english.dart';
import 'package:flutter_localization_using_getx/localization/language/hindi.dart';
import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': english,
        'bn_BD': bengali,
        'hi_IN': hindi,
      };
}
