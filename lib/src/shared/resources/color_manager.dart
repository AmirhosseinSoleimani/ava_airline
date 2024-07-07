import 'package:ava_airline/src/shared/extensions/color_extensions.dart';
import 'package:flutter/material.dart';

class ColorLightThemeManager {
  static Color primary = HexColor.fromHex('#e0001e');
  static Color secondary = HexColor.fromHex('#08103e');
  static Color backGroundColor = Colors.grey.shade50;
  static Color red = Colors.red;
  static Color white = Colors.white;
  static Color black = Colors.black;
  static Color transparent = Colors.transparent;
}

class ColorDarkThemeManager {
  static Color primary = HexColor.fromHex('#f39c12');
  static Color backGroundColor = HexColor.fromHex('#171717');
  static Color whiteColor = HexColor.fromHex('#ffffff');
  static Color greyColor = HexColor.fromHex('#737373');
  static Color tealColor = HexColor.fromHex('#3C9773');
  static Color darkPurpleColor = HexColor.fromHex('#2e0336');
  static Color transparent = Colors.transparent;
}