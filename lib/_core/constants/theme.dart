import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/color.dart';

ThemeData theme() {
  return ThemeData(
    appBarTheme: appBarTheme(),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
          backgroundColor: basicColorW,
          foregroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: primaryColor), // 테두리 색상 설정
          ),
          minimumSize: Size(double.infinity, 50)),
    ),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
    centerTitle: true,
    backgroundColor: primaryColor,
    elevation: 0.5,
  );
}
