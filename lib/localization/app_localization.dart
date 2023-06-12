import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'title': 'Localization App',
      'greeting': 'Name: Omit Kumar',
      'switchButton': 'Change language',
      'address': 'Address: Shewrapara, Mirpur, Dhaka',
    },
    'bn': {
      'title': 'লোকালাইজেশন অ্যাপ',
      'greeting': 'নাম: অমিত কুমার',
      'switchButton': 'ভাষা পরিবর্তন করুন',
      'address': 'ঠিকানা: শেওড়াপাড়া, মিরপুর, ঢাকা',
    },
  };

  String? get title {
    return _localizedValues[locale.languageCode]!['title'];
  }

  String? get greeting {
    return _localizedValues[locale.languageCode]!['greeting'];
  }

  String? get switchButton {
    return _localizedValues[locale.languageCode]!['switchButton'];
  }

  String? get address {
    return _localizedValues[locale.languageCode]!['address'];
  }

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
  _AppLocalizationsDelegate();
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'bn'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) {
    return false;
  }
}
