import 'package:ava_airline/src/shared/resources/resources.dart';
import 'package:flutter/material.dart';

abstract class AppThemeData {
  ThemeData get materialThemeData;
}

class LightAppThemeData extends AppThemeData {

  @override
  ThemeData get materialThemeData => ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,

      colorScheme: ColorScheme(
        primary: ColorLightThemeManager.primary,
        onPrimary: ColorLightThemeManager.white,

        secondary: ColorLightThemeManager.secondary,
        onSecondary: ColorLightThemeManager.white,

        error: ColorLightThemeManager.red,
        onError: ColorLightThemeManager.white,

        surface: ColorLightThemeManager.backGroundColor,
        onSurface: ColorLightThemeManager.black,

        brightness: Brightness.light,
      ),

      textTheme: TextTheme(
        headlineLarge: getBoldStyle(fontSize: AppSize.s24, color: ColorLightThemeManager.black),
        headlineMedium: getSemiBoldStyle(fontSize: AppSize.s24, color: ColorLightThemeManager.black),
        headlineSmall: getRegularStyle(fontSize: AppSize.s24, color: ColorLightThemeManager.black),

        titleLarge: getBoldStyle(fontSize: AppSize.s18, color: ColorLightThemeManager.black),
        titleMedium: getSemiBoldStyle(fontSize: AppSize.s18, color: ColorLightThemeManager.black),
        titleSmall: getRegularStyle(fontSize: AppSize.s18, color: ColorLightThemeManager.black),

        displayLarge: getBoldStyle(fontSize: AppSize.s16, color: ColorLightThemeManager.black),
        displayMedium: getSemiBoldStyle(fontSize: AppSize.s16, color: ColorLightThemeManager.black),
        displaySmall: getRegularStyle(fontSize: AppSize.s16, color: ColorLightThemeManager.black),

        bodyLarge: getBoldStyle(fontSize: AppSize.s14, color: ColorLightThemeManager.black),
        bodyMedium: getSemiBoldStyle(fontSize: AppSize.s14, color: ColorLightThemeManager.black),
        bodySmall: getRegularStyle(fontSize: AppSize.s14, color: ColorLightThemeManager.black),

        labelLarge: getBoldStyle(fontSize: AppSize.s12, color: ColorLightThemeManager.black),
        labelMedium: getSemiBoldStyle(fontSize: AppSize.s12, color: ColorLightThemeManager.black),
        labelSmall: getRegularStyle(fontSize: AppSize.s12, color: ColorLightThemeManager.black),
      ).apply(fontFamily: FontConstants.fontFamily)
  );
}


class DarkAppThemeData extends AppThemeData{

  @override
  ThemeData get materialThemeData => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

      textTheme: TextTheme(
        headlineLarge: getBoldStyle(fontSize: AppSize.s24, color: ColorLightThemeManager.white),
        headlineMedium: getSemiBoldStyle(fontSize: AppSize.s24, color: ColorLightThemeManager.white),
        headlineSmall: getRegularStyle(fontSize: AppSize.s24, color: ColorLightThemeManager.white),

        titleLarge: getBoldStyle(fontSize: AppSize.s18, color: ColorLightThemeManager.white),
        titleMedium: getSemiBoldStyle(fontSize: AppSize.s18, color: ColorLightThemeManager.white),
        titleSmall: getRegularStyle(fontSize: AppSize.s18, color: ColorLightThemeManager.white),

        displayLarge: getBoldStyle(fontSize: AppSize.s16, color: ColorLightThemeManager.white),
        displayMedium: getSemiBoldStyle(fontSize: AppSize.s16, color: ColorLightThemeManager.white),
        displaySmall: getRegularStyle(fontSize: AppSize.s16, color: ColorLightThemeManager.white),

        bodyLarge: getBoldStyle(fontSize: AppSize.s14, color: ColorLightThemeManager.white),
        bodyMedium: getSemiBoldStyle(fontSize: AppSize.s14, color: ColorLightThemeManager.white),
        bodySmall: getRegularStyle(fontSize: AppSize.s14, color: ColorLightThemeManager.white),

        labelLarge: getBoldStyle(fontSize: AppSize.s12, color: ColorLightThemeManager.white),
        labelMedium: getSemiBoldStyle(fontSize: AppSize.s12, color: ColorLightThemeManager.white),
        labelSmall: getRegularStyle(fontSize: AppSize.s12, color: ColorLightThemeManager.white),
      ).apply(fontFamily: FontConstants.fontFamily)
  );
}