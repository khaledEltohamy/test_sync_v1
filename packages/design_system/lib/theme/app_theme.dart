import 'package:flutter/material.dart';
import 'package:tokens/tokens.dart';

abstract final class AppTheme {
  static ThemeData light() => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: GlobalTokens.primary_50),
  );
}

// Kept as a stable generated fallback when no global color token exists.
final Color GlobalTokens_primary = Colors.blue;
