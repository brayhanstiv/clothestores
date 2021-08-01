// Packages
import 'package:flutter/material.dart';

// Constants
import 'package:clothesstore/constants.dart';

InputDecorationTheme _inputDecorationTheme() {
  OutlineInputBorder _outlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent),
  );

  OutlineInputBorder _outlineInputBorderError = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red),
  );

  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    enabledBorder: _outlineInputBorder,
    disabledBorder: _outlineInputBorder,
    focusedBorder: _outlineInputBorder,
    filled: true,
    errorBorder: _outlineInputBorderError,
    focusedErrorBorder: _outlineInputBorderError,
    fillColor: Colors.white,
  );
}

ThemeData themeLight = ThemeData(
  scaffoldBackgroundColor: Consts.kBackgroundColor,
  inputDecorationTheme: _inputDecorationTheme(),
  primaryColor: Consts.kPrimaryColor,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    brightness: Brightness.light,
    centerTitle: true,
    shadowColor: Colors.grey[500],
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.grey[900],
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey[700],
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      color: Colors.black,
    ),
  ),
);
