import 'package:flutter/material.dart';

class AppColorsTheme extends ThemeExtension<AppColorsTheme> {
  //reference colors
  static const Color _littleDarkBlue = Color(0XFF162c46);
  static const Color _cyan = Color(0XFF40d4e7);
  static const Color _grey = Color(0xFF9E9E9E);
  static const Color _red = Color(0XFFB00020);
  static const Color _green = Color(0XFF00C853);
  static const Color _darkBlue = Color(0XFF021427);
  static const Color _white = Color(0xFFFFFFFF);
  static const Color _black = Color(0xFF000000);

  //actual colors to be used throughout the app
  final Color bgColor;
  final Color highlight;
  final Color bgInput;
  final Color snackbarValidation;
  final Color snackBarFailure;
  final Color textDefault;

  // private constructor (use factories below instead):
  const AppColorsTheme._internal({
    required this.bgColor,
    required this.highlight,
    required this.bgInput,
    required this.snackbarValidation,
    required this.snackBarFailure,
    required this.textDefault,
  });

//defining dark theme
  factory AppColorsTheme.light() {
    return const AppColorsTheme._internal(
        bgColor: _white,
        highlight: _darkBlue,
        bgInput: _grey,
        snackbarValidation: _green,
        snackBarFailure: _red,
        textDefault: _black);
  }

//define your light theme
  // factory AppColorsTheme.light(){
  //   return AppColorsTheme._internal(...);
  // }

  @override
  ThemeExtension<AppColorsTheme> copyWith({bool? lightMode}) {
    if (lightMode == null || lightMode == true) {
      return AppColorsTheme.light();
    }
    return AppColorsTheme.light();
  }

  @override
  ThemeExtension<AppColorsTheme> lerp(
          covariant ThemeExtension<AppColorsTheme>? other, double t) =>
      this;
}
