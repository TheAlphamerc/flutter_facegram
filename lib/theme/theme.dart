import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_facegram/theme/dark_color.dart';
import 'package:flutter_facegram/theme/light_color.dart';

class Bloc {
  final _themeController = StreamController<bool>();
  get changeTheme => _themeController.sink.add;
  get darkThemeEnabled => _themeController.stream;
}

enum ThemeType { Dark, Light }

class AppTheme {
  static ThemeData darkTheme = ThemeData(
      primarySwatch: Colors.blue,
      backgroundColor: DarkColor.background,
      primaryColor: DarkColor.black,
      primaryColorDark: DarkColor.Darker,
      primaryColorLight: DarkColor.Brighter,
      colorScheme: ColorScheme(
          primary: Colors.grey,
          primaryVariant: Colors.grey,
          secondary:Colors.grey,
          secondaryVariant: Colors.grey,
          surface: DarkColor.background,
          background: DarkColor.background,
          error: Colors.red,
          onPrimary: DarkColor.titleTextColor,
          onSecondary: DarkColor.white,
          onSurface: DarkColor.titleTextColor,
          onBackground: DarkColor.titleTextColor,
          onError: DarkColor.titleTextColor,
          brightness: Brightness.dark),
       textTheme: TextTheme(
        headline1: TextStyle(color: DarkColor.subTitleTextColor),
        bodyText1: TextStyle(color: Colors.white60),
        bodyText2: TextStyle(color: Colors.white60),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.grey.shade500,
       textTheme: ButtonTextTheme.primary
      ),
      iconTheme: IconThemeData(color: DarkColor.lightGrey));
  static ThemeData lightTheme = ThemeData(
      primarySwatch: Colors.blue,
      backgroundColor: LightColor.background,
      primaryColor: LightColor.black,
      accentColor: LightColor.lightblack,
      primaryColorDark: LightColor.Darker,
      primaryColorLight: LightColor.Brighter,
      colorScheme: ColorScheme(
          primary: Colors.grey,
          primaryVariant: Colors.grey,
          secondary: Colors.grey,
          secondaryVariant: Colors.grey,
          surface: DarkColor.background,
          background: DarkColor.background,
          error: Colors.red,
          onPrimary: DarkColor.titleTextColor,
          onSecondary: LightColor.Darker,
          onSurface: DarkColor.titleTextColor,
          onBackground: DarkColor.titleTextColor,
          onError: DarkColor.titleTextColor,
          brightness: Brightness.dark),
      cardTheme: CardTheme(color: LightColor.background),
      textTheme: TextTheme(
        headline1: TextStyle(color: LightColor.subTitleTextColor),
        bodyText1: TextStyle(color: Colors.grey.shade700),
        bodyText2: TextStyle(color: Colors.black87),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.black54,
       textTheme: ButtonTextTheme.primary
      ),
      iconTheme: IconThemeData(color: LightColor.lightblack));
}
