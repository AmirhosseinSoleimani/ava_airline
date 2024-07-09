import 'package:ava_airline/di/di_setup.dart';
import 'package:ava_airline/src/shared/storage/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../app_constants.dart';

@singleton
class LocaleProvider extends ChangeNotifier {
  Locale? locale = const Locale('fa');
  bool canNotify = true;

  LocaleProvider() {
    initialize();
  }

  @override
  void notifyListeners() {
    if (canNotify) {
      super.notifyListeners();
    }
  }

  @override
  void dispose() {
    canNotify = false;
    super.dispose();
  }

  bool get isFa => locale == const Locale('fa');

  void initialize() {
    final language = getIt<Storage>().language();
      locale = Locale(language);
      AppConstants.language = language;
    }

  void changeLocale(Locale? newLocale) {
    locale = newLocale ?? const Locale('fa');
    getIt<Storage>().setLanguage(newLocale?.languageCode ?? 'fa');
    AppConstants.language = newLocale?.languageCode ?? 'fa';
    notifyListeners();
  }
}
