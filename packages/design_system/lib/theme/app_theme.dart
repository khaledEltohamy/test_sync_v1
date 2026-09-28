import 'package:flutter/material.dart';
import 'package:tokens/tokens.dart';

abstract final class AppTheme {
  static ThemeData light() => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: AppThemeTokens.base.primary50),
  );
}
