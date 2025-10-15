import 'package:flutter/material.dart';
Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xFFfffcfc);
  static Color textColor = const Color(0xFF3b3b3b);
  static Color ticketColor = const Color(0xFFf7f4f4);
  static TextStyle textStyle = TextStyle(
    color: textColor,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle1 = TextStyle(
    color: textColor,
    fontSize: 26,
    fontWeight: FontWeight.bold
  );
  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle3 = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );

}
