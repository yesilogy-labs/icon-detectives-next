import 'package:flutter/material.dart';

/// Placeholder theme; the new design system replaces the seed colour and type.
abstract final class AppTheme {
  static const _seed = Color(0xFF8E1B14);

  static final light = ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: _seed));
  static final dark = ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: _seed, brightness: Brightness.dark));
}
