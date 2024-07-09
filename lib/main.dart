import 'package:ava_airline/di/di_setup.dart';
import 'package:ava_airline/src/features/app/my_app.dart';
import 'package:ava_airline/src/shared/resources/localization/locale_provider.dart';
import 'package:ava_airline/src/shared/storage/shared_pref.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await getIt<Storage>().init();
  getIt<LocaleProvider>().initialize();
  await Future.delayed(const Duration(milliseconds: 100));
  runApp(const MyApp());
}
