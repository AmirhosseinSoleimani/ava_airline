part of 'theme_cubit.dart';

@immutable
abstract class ThemeState {}

class ThemeDark extends ThemeState {
  final Tier tier;

  ThemeDark({required this.tier});
}

class ThemeLight extends ThemeState {
  final Tier tier;

  ThemeLight({required this.tier});
}