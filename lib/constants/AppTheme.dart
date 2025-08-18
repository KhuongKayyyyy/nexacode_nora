import 'package:flutter/material.dart';
import 'package:nora/constants/ColorConstants.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      scaffoldBackgroundColor: ColorConstants.greyColor,
      appBarTheme: AppBarTheme(
        backgroundColor: ColorConstants.greyColor,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
    );
  }
}
