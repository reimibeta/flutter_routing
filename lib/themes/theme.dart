// Copyright (c) 2020 Aniket Malik [aniketmalikwork@gmail.com]
// All Rights Reserved.
//
// NOTICE: All information contained herein is, and remains the
// property of Aniket Malik. The intellectual and technical concepts
// contained herein are proprietary to Aniket Malik and are protected
// by trade secret or copyright law.
//
// Dissemination of this information or reproduction of this material
// is strictly forbidden unless prior written permission is obtained from
// Aniket Malik.

import 'package:flutter_routing/themes/colors.dart';
import 'package:flutter_routing/themes/themeGuide.dart';
import 'package:flutter/material.dart';

export 'colors.dart';
export 'gradients.dart';
export 'themeGuide.dart';

abstract class CustomTheme {
  // Error Color common to both Themes
  static const Color _cursorColor = AppColors.mBlue;

  // Contains the information about the light theme
  static ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColorBrightness: Brightness.light,
    primaryColor: AppColors.mBlue,
    primaryColorLight: AppColors.mLightBlue,
    primaryColorDark: AppColors.mBrown,
    splashColor: AppColors.mLightPurple,
    highlightColor: AppColors.mLightPurple,
    backgroundColor: AppColors.mPurple,
    scaffoldBackgroundColor: AppColors.mWhite,
    accentColor: AppColors.mWhite,
    cursorColor: _cursorColor,
    dividerColor: const Color.fromARGB(255, 230, 230, 230),
    appBarTheme: const AppBarTheme(
      // brightness: Brightness.light,
      color: AppColors.mWhite,
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.black87,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.lightGrey.withAlpha(10),
      contentPadding: ThemeGuide.padding16,
      focusedErrorBorder: const OutlineInputBorder(
        borderRadius: ThemeGuide.borderRadius,
        borderSide: BorderSide(width: 2, color: AppColors.mLightBlue),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: ThemeGuide.borderRadius,
        borderSide: BorderSide(width: 2, color: AppColors.mLightBlue),
      ),
      errorBorder: const OutlineInputBorder(
        borderRadius: ThemeGuide.borderRadius,
        borderSide: BorderSide(width: 2, color: Colors.red),
      ),
      enabledBorder: const OutlineInputBorder(
        borderRadius: ThemeGuide.borderRadius,
        borderSide: BorderSide(width: 2, color: Colors.transparent),
      ),
      errorMaxLines: 3,
      hintStyle: const TextStyle(
        fontWeight: FontWeight.w600,
      ),
      errorStyle: const TextStyle(
        fontWeight: FontWeight.w600,
      ),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.mWhite,
      highlightColor: AppColors.mLightBlueAccent,
      splashColor: AppColors.mLightBlueAccent,
      disabledColor: LightTheme.mDisabledColor,
      padding: EdgeInsets.all(12),
      shape: RoundedRectangleBorder(
        borderRadius: ThemeGuide.borderRadius,
        side: BorderSide(
          width: 2,
          color: AppColors.mLightBlue,
        ),
      ),
    ),
    textTheme: ThemeData.light().textTheme.copyWith(
          button: const TextStyle(color: AppColors.mLightBlue),
        ),
  );

  // Contains the information about the dark theme
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColorBrightness: Brightness.dark,
    primaryColor: AppColors.mBlue,
    primaryColorLight: AppColors.mLightBlue,
    primaryColorDark: AppColors.mBrown,
    splashColor: AppColors.mLightPurple,
    highlightColor: AppColors.mLightPurple,
    backgroundColor: AppColors.mPurple,
    toggleableActiveColor: AppColors.mLightBlue,
    cursorColor: _cursorColor,
    accentColor: ThemeData.dark().scaffoldBackgroundColor,
    appBarTheme: AppBarTheme(
      brightness: Brightness.dark,
      color: ThemeData.dark().scaffoldBackgroundColor,
      elevation: 0,
      textTheme: const TextTheme(
        headline6: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    indicatorColor: Colors.white,
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      contentPadding: ThemeGuide.padding16,
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: ThemeGuide.borderRadius,
        borderSide: BorderSide(width: 2, color: AppColors.mLightBlue),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: ThemeGuide.borderRadius,
        borderSide: BorderSide(width: 2, color: AppColors.mLightBlue),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: ThemeGuide.borderRadius,
        borderSide: BorderSide(width: 2, color: Colors.red),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: ThemeGuide.borderRadius,
        borderSide: BorderSide(width: 2, color: Colors.transparent),
      ),
      errorMaxLines: 3,
      hintStyle: TextStyle(
        fontWeight: FontWeight.w600,
      ),
      errorStyle: TextStyle(
        fontWeight: FontWeight.w600,
      ),
    ),
    buttonTheme: const ButtonThemeData(
      highlightColor: AppColors.mLightBlueAccent,
      splashColor: AppColors.mLightBlueAccent,
      disabledColor: LightTheme.mDisabledColor,
      padding: EdgeInsets.all(12),
      shape: RoundedRectangleBorder(
        borderRadius: ThemeGuide.borderRadius,
        side: BorderSide(
          width: 2,
          color: AppColors.mLightBlue,
        ),
      ),
    ),
    textTheme: ThemeData.dark().textTheme.copyWith(
          button: const TextStyle(color: AppColors.mLightBlue),
        ),
  );
}

abstract class LightTheme {
  static const Color mRed = Color(0xFFF58474);
  static const Color mPurple = Color(0xFF2B2E51);
  static const Color mLightPurple = Color(0xFF5F5186);
  static const Color mYellow = Color(0xFFF1AC71);
  static const Color mBlue = Color(0xFF93B4DF);
  static const Color mDisabledColor = Color(0xFFD2D2D2);
  static const IconThemeData mIconThemeData =
      IconThemeData(color: Colors.black);
  static const InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: Color.fromRGBO(240, 240, 240, 1),
    border: InputBorder.none,
    hintStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ),
    prefixStyle: TextStyle(
      color: Colors.black54,
    ),
  );
}

abstract class DarkTheme {
  static const Color scaffoldBackgroundColor = Color(0xFF104056);
  static const Color headingTextColor = Colors.white;
  static const Color inActiveTextColor = Colors.white24;
  static const Color yellow = Color(0xFFFFB020);
  static const Color yellowShadow = Color(0xFFD7941D);
  static const Color blue = Color(0xFF4F67EC);
  static const Color blueShadow = Color(0xFF4053BD);
  static const Color greenishBlue = Color(0xFF42D3D4);
  static const Color lightRed = Color(0xFFF09A8A);
}
