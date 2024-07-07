import 'package:ava_airline/src/routes/app_routes.dart';
import 'package:ava_airline/src/shared/resources/resources.dart';
import 'package:ava_airline/src/shared/resources/theme/bloc/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final _lightTheme = LightAppThemeData();

  static final _darkTheme = DarkAppThemeData();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (BuildContext context, ThemeState state) {
          return MaterialApp.router(
            title: 'Ava Airline',
            theme: _lightTheme.materialThemeData,
            darkTheme: _darkTheme.materialThemeData,
            themeMode: context.watch<ThemeCubit>().isDark? ThemeMode.dark : ThemeMode.light,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            locale: const Locale('fa'),
            debugShowCheckedModeBanner: false,
            routerConfig: Routes.routes,
          );
        },
      ),
    );
  }
}