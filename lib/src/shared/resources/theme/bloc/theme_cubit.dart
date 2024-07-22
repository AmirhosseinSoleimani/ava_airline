import 'package:ava_airline/src/features/profile/tier_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit()
      : super(ThemeLight(
          tier: Tier(
              path: 'assets/image/bronze.jpg',
              minMile: 1000,
              color: const Color.fromRGBO(205, 127, 50, 1)),
        ));

  List<Tier> tiers = [
    Tier(
        path: 'assets/image/blue.jpg', minMile: 0, color: Colors.blue.shade700),
    Tier(
        path: 'assets/image/bronze.jpg',
        minMile: 1000,
        color: const Color.fromRGBO(205, 127, 50, 1)),
    Tier(
        path: 'assets/image/silver.jpg',
        minMile: 2000,
        color: const Color.fromRGBO(192, 192, 192, 1)),
    Tier(
        path: 'assets/image/gold.jpg',
        minMile: 5000,
        color: const Color.fromRGBO(201, 171, 4, 1.0)),
  ];

  int tierIndex = 0;

  Tier get tier => tiers[tierIndex];

  bool _isDark = false;

  bool get isDark => _isDark;

  void toggleTheme() {
    _isDark = !_isDark;
    if (_isDark) {
      emit(ThemeDark(tier: tiers[tierIndex]));
    } else {
      emit(ThemeLight(tier: tiers[tierIndex]));
    }
  }

  void toggleTier() {
    if (tierIndex == 3) {
      tierIndex = 0;
    } else {
      tierIndex++;
    }
    if (_isDark) {
      emit(ThemeDark(tier: tiers[tierIndex]));
    } else {
      emit(ThemeLight(tier: tiers[tierIndex]));
    }
  }
}
