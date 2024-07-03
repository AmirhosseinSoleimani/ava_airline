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

      primaryColor: ColorLightThemeManager.transparent,
      cardColor: ColorLightThemeManager.lightBlue,
      indicatorColor: ColorLightThemeManager.primary,

      colorScheme: ColorScheme(
        primary: ColorLightThemeManager.blue,
        onPrimary: ColorLightThemeManager.lightBlue,

        secondary: ColorLightThemeManager.whiteColor,
        onSecondary: ColorLightThemeManager.greyMedium,

        error: ColorLightThemeManager.redColor,
        onError: ColorLightThemeManager.redLight,

        surface: ColorLightThemeManager.backGroundColor,
        onSurface: ColorLightThemeManager.colorHoloGreyPrimary,

        tertiary: ColorLightThemeManager.colorBlack,

        surfaceContainer: ColorLightThemeManager.lightBlue2,
        secondaryContainer: ColorLightThemeManager.grey,

        brightness: Brightness.light,
      ),

      textTheme: TextTheme(
        headlineLarge: getBoldStyle(fontSize: AppSize.s24, color: ColorLightThemeManager.colorBlack),
        headlineMedium: getSemiBoldStyle(fontSize: AppSize.s24, color: ColorLightThemeManager.colorBlack),
        headlineSmall: getRegularStyle(fontSize: AppSize.s24, color: ColorLightThemeManager.colorBlack),

        titleLarge: getBoldStyle(fontSize: AppSize.s18, color: ColorLightThemeManager.colorBlack),
        titleMedium: getSemiBoldStyle(fontSize: AppSize.s18, color: ColorLightThemeManager.colorBlack),
        titleSmall: getRegularStyle(fontSize: AppSize.s18, color: ColorLightThemeManager.colorBlack),

        displayLarge: getBoldStyle(fontSize: AppSize.s16, color: ColorLightThemeManager.colorBlack),
        displayMedium: getSemiBoldStyle(fontSize: AppSize.s16, color: ColorLightThemeManager.colorBlack),
        displaySmall: getRegularStyle(fontSize: AppSize.s16, color: ColorLightThemeManager.colorBlack),

        bodyLarge: getBoldStyle(fontSize: AppSize.s14, color: ColorLightThemeManager.colorBlack),
        bodyMedium: getSemiBoldStyle(fontSize: AppSize.s14, color: ColorLightThemeManager.colorBlack),
        bodySmall: getRegularStyle(fontSize: AppSize.s14, color: ColorLightThemeManager.colorBlack),

        labelLarge: getBoldStyle(fontSize: AppSize.s12, color: ColorLightThemeManager.colorBlack),
        labelMedium: getSemiBoldStyle(fontSize: AppSize.s12, color: ColorLightThemeManager.colorBlack),
        labelSmall: getRegularStyle(fontSize: AppSize.s12, color: ColorLightThemeManager.colorBlack),
      ).apply(fontFamily: FontConstants.fontFamily)
  );
}


class DarkAppThemeData extends AppThemeData{

  @override
  ThemeData get materialThemeData => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

      colorScheme: ColorScheme(
        primary: ColorLightThemeManager.blue,
        onPrimary: ColorLightThemeManager.lightBlue,

        secondary: Colors.white70,
        onSecondary: Colors.white60,

        error: ColorLightThemeManager.redColor,
        onError: ColorLightThemeManager.redLight,

        surface: ColorLightThemeManager.colorBlack,
        onSurface: ColorLightThemeManager.colorHoloGreyPrimary,

        tertiary: ColorLightThemeManager.colorBlack,

        surfaceContainer: ColorLightThemeManager.lightBlue2,
        secondaryContainer: Colors.white60,

        brightness: Brightness.light,
      ),

      textTheme: TextTheme(
        headlineLarge: getBoldStyle(fontSize: AppSize.s24, color: ColorLightThemeManager.whiteColor),
        headlineMedium: getSemiBoldStyle(fontSize: AppSize.s24, color: ColorLightThemeManager.whiteColor),
        headlineSmall: getRegularStyle(fontSize: AppSize.s24, color: ColorLightThemeManager.whiteColor),

        titleLarge: getBoldStyle(fontSize: AppSize.s18, color: ColorLightThemeManager.whiteColor),
        titleMedium: getSemiBoldStyle(fontSize: AppSize.s18, color: ColorLightThemeManager.whiteColor),
        titleSmall: getRegularStyle(fontSize: AppSize.s18, color: ColorLightThemeManager.whiteColor),

        displayLarge: getBoldStyle(fontSize: AppSize.s16, color: ColorLightThemeManager.whiteColor),
        displayMedium: getSemiBoldStyle(fontSize: AppSize.s16, color: ColorLightThemeManager.whiteColor),
        displaySmall: getRegularStyle(fontSize: AppSize.s16, color: ColorLightThemeManager.whiteColor),

        bodyLarge: getBoldStyle(fontSize: AppSize.s14, color: ColorLightThemeManager.whiteColor),
        bodyMedium: getSemiBoldStyle(fontSize: AppSize.s14, color: ColorLightThemeManager.whiteColor),
        bodySmall: getRegularStyle(fontSize: AppSize.s14, color: ColorLightThemeManager.whiteColor),

        labelLarge: getBoldStyle(fontSize: AppSize.s12, color: ColorLightThemeManager.whiteColor),
        labelMedium: getSemiBoldStyle(fontSize: AppSize.s12, color: ColorLightThemeManager.whiteColor),
        labelSmall: getRegularStyle(fontSize: AppSize.s12, color: ColorLightThemeManager.whiteColor),
      ).apply(fontFamily: FontConstants.fontFamily)
  );
}