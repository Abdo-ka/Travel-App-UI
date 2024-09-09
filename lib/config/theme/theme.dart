// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:travel_app/config/theme/app_typography.dart';
import 'package:travel_app/config/theme/color_scheme.dart';

// 🌎 Project imports:


export 'app_typography.dart';
export 'color_scheme.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
        brightness: Brightness.light,
        // useMaterial3: false,
        colorScheme:AppColorScheme.light,
        textTheme: AppTypography.textTheme,
        fontFamily: AppTypography.poppinsFamily,
        appBarTheme: _appBarTheme(AppColorScheme.light),
        switchTheme: SwitchThemeData(
            thumbColor:
                WidgetStatePropertyAll(AppColorScheme.light.surface)),
      );

  static ThemeData get dark => ThemeData(
        brightness: Brightness.dark,
        // useMaterial3: false,
        colorScheme: AppColorScheme.dark,
        textTheme: AppTypography.textTheme,
        fontFamily: AppTypography.poppinsFamily,
        appBarTheme: _appBarTheme(AppColorScheme.dark),
        switchTheme: SwitchThemeData(
            thumbColor:
                WidgetStatePropertyAll(AppColorScheme.light.surface)),
      );

  static AppBarTheme _appBarTheme(ColorScheme scheme) =>
      AppBarTheme(color: scheme.surface, centerTitle: true);
}
