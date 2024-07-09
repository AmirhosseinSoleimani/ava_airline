import 'package:ava_airline/src/routes/app_routes.dart';
import 'package:ava_airline/src/shared/resources/localization/locale_provider.dart';
import 'package:ava_airline/src/shared/resources/resources.dart';
import 'package:ava_airline/src/shared/resources/theme/bloc/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final _lightTheme = LightAppThemeData();

  static final _darkTheme = DarkAppThemeData();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LocaleProvider(),
      child: BlocProvider(
        create: (BuildContext context) => ThemeCubit(),
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (BuildContext context, ThemeState state) {
            final provider = context.watch<LocaleProvider>();
            return MaterialApp.router(
              key: navigatorKey,
              title: 'AVA Airline',
              theme: _lightTheme.materialThemeData,
              darkTheme: _darkTheme.materialThemeData,
              themeMode: context.watch<ThemeCubit>().isDark
                  ? ThemeMode.dark
                  : ThemeMode.light,
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
      ),
    );
  }
}
