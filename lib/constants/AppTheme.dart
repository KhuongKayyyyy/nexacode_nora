import 'package:flutter/material.dart';
import 'package:nora/constants/ColorConstants.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      scaffoldBackgroundColor: ColorConstants.greyColor,
      appBarTheme: AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: ColorConstants.greyColor,
      ),
    );
  }
}
