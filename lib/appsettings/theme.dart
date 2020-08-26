import 'package:flutter/material.dart';

class AppTheme {
  static const int splashScreenTitleFontSize = 48;
  static const int titleFontSize = 34;
  static const double sidePadding = 15;
  static const double widgetSidePadding = 20;
  static const double buttonRadius = 25;
  static const double imageRadius = 8;
  static const double linePadding = 4;
  static const double widgetBorderRadius = 34;
  static const double textFieldRadius = 4.0;
  static const EdgeInsets bottomSheetPadding =
      EdgeInsets.symmetric(horizontal: 16, vertical: 10);
  static const app_bar_size = 56.0;
  static const app_bar_expanded_size = 180.0;
  static const tile_width = 148.0;
  static const tile_height = 276.0;

  static const TextStyle body2_white = TextStyle(
    // body1 -> body2
    // fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    letterSpacing: 0.2,
    color: AppColors.white,
  );

  static const TextStyle blacktext = TextStyle(
      // body1 -> body2
      // fontFamily: fontName,
      fontWeight: FontWeight.w400,
      fontSize: 18,
      letterSpacing: 0.2,
      color: AppColors.darkText);

  static const TextStyle title = TextStyle(
      // body1 -> body2
      // fontFamily: fontName,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      letterSpacing: 0,
      color: AppColors.title);

  static const TextStyle title2 = TextStyle(
      // body1 -> body2
      // fontFamily: fontName,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      letterSpacing: 0,
      color: Colors.grey);
       static const TextStyle blacktitle2 = TextStyle(
      // body1 -> body2
      // fontFamily: fontName,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      letterSpacing: 0,
      color: AppColors.darkText);
  static const TextStyle neontext = TextStyle(
      // body1 -> body2
      // fontFamily: fontName,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      letterSpacing: 0,
      color: AppColors.neon
      );
      static const TextStyle txtbox = TextStyle(
      color: Colors.grey, fontSize: 16);

}

class AppColors {
  static Color black = Color(0xFF222222);
  static const Color darkText = Color(0xFF253840);
  static const Color white = Color(0xFFFFFFFF);
  static const Color title = Color(0xFFd11d53);
  static const Color neon = Color(0xFF23e000);

  static Color appbar = HexColor("#d11d53");
  static Color appbar1 = HexColor("#ad1845");
  static Color yellow = HexColor("#FF9900");
  static Color primarydarkcolor = HexColor("#512DC5");
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
