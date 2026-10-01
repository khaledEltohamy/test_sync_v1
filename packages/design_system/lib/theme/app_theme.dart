// GENERATED FILE - DO NOT EDIT BY HAND.

import 'package:flutter/material.dart';
import 'package:tokens/tokens.dart';
import 'theme_extension.dart';

enum DsBrand {
  base,
}

class DsTheme {
  const DsTheme._();

  static ThemeData light({
    DsBrand brand = DsBrand.base,
  }) {
    return _build(
      brand: brand,
      brightness: Brightness.light,
    );
  }

  static ThemeData dark({
    DsBrand brand = DsBrand.base,
  }) {
    return _build(
      brand: brand,
      brightness: Brightness.dark,
    );
  }

  static dynamic tokensFor(
    DsBrand brand,
  ) {
    switch (brand) {
      case DsBrand.base:
        return AppThemeTokens.base;

    }
  }

  static ThemeData _build({
    required DsBrand brand,
    required Brightness brightness,
  }) {
    final tokens =
        tokensFor(brand);

    final extension =
        DsThemeExtension(
      tokens: tokens,
    );

    final colorScheme =
        ColorScheme.fromSeed(
      seedColor:
          tokens.buttonPrimaryBackground,
      brightness:
          brightness,
    ).copyWith(
      primary:
          tokens.buttonPrimaryBackground,
      onPrimary:
          tokens.buttonPrimaryText,
      surface:
          tokens.backgroundPrimary,
      onSurface:
          tokens.textPrimary,
      outline:
          tokens.borderPrimary,
      error:
          GlobalTokens.red500,
    );

    final base =
        ThemeData(
      useMaterial3: true,
      brightness:
          brightness,
      colorScheme:
          colorScheme,
    );

    return base.copyWith(
      extensions: <ThemeExtension<dynamic>>[
        extension,
      ],
      scaffoldBackgroundColor:
          tokens.backgroundPrimary,
      textTheme:
          base.textTheme.apply(
        bodyColor:
            tokens.textPrimary,
        displayColor:
            tokens.textPrimary,
      ),
      inputDecorationTheme:
          InputDecorationTheme(
        filled: true,
        fillColor:
            tokens.inputBackground,
        contentPadding:
            EdgeInsets.all(
          tokens.textfieldComponentPadding,
        ),
        border:
           _inputBorder(
      tokens.inputBorder,
      tokens.textfieldComponentRadius,
    ),
        enabledBorder:
           _inputBorder(
      tokens.inputBorder,
      tokens.textfieldComponentRadius,
    ),
        focusedBorder:
           _inputBorder(
      tokens.inputBorder,
      tokens.textfieldComponentRadius,
    ),
      ),
      cardTheme:
          CardThemeData(
        color:
            tokens.cardBackground,
        surfaceTintColor:
            Colors.transparent,
        margin:
            EdgeInsets.zero,
        shape:
            RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(
            tokens.cardComponentRadius,
          ),
          side:
              BorderSide(
            color:
                tokens.cardBorder,
          ),
        ),
      ),
      dividerTheme:
          DividerThemeData(
        color:
            tokens.dividerDefault,
      ),
    );
  }

static OutlineInputBorder _inputBorder(
  Color color,
  double radius,
) {
  return OutlineInputBorder(
    borderRadius:
        BorderRadius.circular(radius),
    borderSide:
        BorderSide(color: color),
  );
}
}
