import 'package:flutter/cupertino.dart';

class Palette {
  Palette._();

  static Color pink = const Color(0xffFF6E9E);
  static Color pinklight = const Color(0xffFF9BBB);
  static Color pinkDark = const Color(0xffFF75A2);
  static Color pinkShadow = const Color(0xffFC3FB3);

  static Color yelow = const Color(0xffFFC300);

  static Color black = const Color(0xff1B1B1B);
  static Color blackLight = const Color(0xff273141);

  static Color grey = const Color(0xff959CAC);
  static Color greyLight = const Color(0xffD3D8E5);

  static Color red = const Color(0xffFC3F5E);

  static Color blue = const Color(0xff72D0E2);
  static Color blueLight = const Color(0xffF9FAFC);
  static Color blueBlack = const Color(0xffB9BECC);

  static Color cardC1 = const Color(0xffD5E9EF);
  static Color cardC2 = const Color(0xffEFD5DD);

  static Color shadowBlack = const Color(0xff41464D).withOpacity(0.26);
  static Color shadowPink = const Color(0xffFF6E9E).withOpacity(1);

  static final gradientPink = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Palette.pinklight,
      Palette.pink,
    ],
    stops: const [0.8, 1.0],
  );
}
