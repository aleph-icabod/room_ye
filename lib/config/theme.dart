import 'package:flutter/material.dart';


const colorScheme =ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF6750A4),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFE9DDFF),
  onPrimaryContainer: Color(0xFF22005D),
  secondary: Color(0xFF005BBE),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFD7E2FF),
  onSecondaryContainer: Color(0xFF001A40),
  tertiary: Color(0xFF464ADA),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFE1E0FF),
  onTertiaryContainer: Color(0xFF05006D),
  error: Color(0xFFFF4A4A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFEFBFF),
  onBackground: Color(0xFF001849),
  surface: Color(0xFFFEFBFF),
  onSurface: Color(0xFF001849),
  surfaceVariant: Color(0xFFE7E0EB),
  onSurfaceVariant: Color(0xFF49454E),
  outline: Color(0xFF7A757F),
  onInverseSurface: Color(0xFFEEF0FF),
  inverseSurface: Color(0xFF002B75),
  inversePrimary: Color(0xFFCFBCFF),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF6750A4),
  outlineVariant: Color(0xFFCAC4CF),
  scrim: Color(0xFF000000),
);


class RoomYeeTheme{
  themeData(){
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
    );
  }

}