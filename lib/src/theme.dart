import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff004ea0),
      surfaceTint: Color(0xff005cba),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff1672df),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff004ea0),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff1672df),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff004ea0),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff1672df),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffcf8f8),
      onSurface: Color(0xff7e7e7e),
      onSurfaceVariant: Color(0xff444748),
      outline: Color(0xff747878),
      outlineVariant: Color(0xffc4c7c7),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313030),
      inversePrimary: Color(0xffabc7ff),
      primaryFixed: Color(0xffd7e3ff),
      onPrimaryFixed: Color(0xff001b3f),
      primaryFixedDim: Color(0xffabc7ff),
      onPrimaryFixedVariant: Color(0xff00458e),
      secondaryFixed: Color(0xffd7e3ff),
      onSecondaryFixed: Color(0xff001b3f),
      secondaryFixedDim: Color(0xffabc7ff),
      onSecondaryFixedVariant: Color(0xff00458e),
      tertiaryFixed: Color(0xffd7e3ff),
      onTertiaryFixed: Color(0xff001b3f),
      tertiaryFixedDim: Color(0xffabc7ff),
      onTertiaryFixedVariant: Color(0xff00458e),
      surfaceDim: Color(0xffddd9d8),
      surfaceBright: Color(0xfffcf8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f3f2),
      surfaceContainer: Color(0xfff1edec),
      surfaceContainerHigh: Color(0xffebe7e7),
      surfaceContainerHighest: Color(0xffe5e2e1),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
