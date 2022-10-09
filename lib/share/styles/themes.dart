import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// TEXTSTYLE
// display
TextStyle textStyle1 = GoogleFonts.amiri(
  color: black,
  fontWeight: FontWeight.w700,
  fontSize: 36,
);
// headline
TextStyle textStyle2 = GoogleFonts.montserrat(color: black);
// body / title
TextStyle textStyle3 = GoogleFonts.hindMadurai(color: black);

// FONTWEIGHT
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;

// COLORS
Color orange = const Color.fromARGB(255, 246, 156, 8);
Color red = const Color.fromARGB(255, 244, 82, 45);
Color black = const Color.fromARGB(255, 28, 29, 31);
Color white = const Color.fromARGB(255, 255, 255, 255);
Color blue = const Color.fromARGB(255, 68, 53, 187);
Color yellow = const Color.fromARGB(255, 233, 231, 41);
Color lightGreen = const Color.fromARGB(255, 114, 216, 186);
Color darkGray = const Color.fromARGB(255, 106, 111, 115);
Color darkGreen = const Color.fromARGB(255, 25, 159, 163);
Color purple = const Color.fromARGB(255, 164, 53, 240);
Color nearBlack = const Color.fromARGB(255, 28, 29, 31);

ThemeData themeData = ThemeData(
  // colors
  scaffoldBackgroundColor: white,
  backgroundColor: white,

  // textstyle
  textTheme: textTheme,

  // buttons
  elevatedButtonTheme: elevatedButtonThemeData,
  outlinedButtonTheme: outlinedButtonThemeData,

  // bottom navigation bar
  bottomNavigationBarTheme: bottomNavigationBarThemeData,

  // appbar
  appBarTheme: appBarTheme,
);

ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: purple,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.zero,
    ),
    elevation: 0,
  ),
);

TextButtonThemeData textButtonThemeData = TextButtonThemeData(
  style: TextButton.styleFrom(
    backgroundColor: Colors.transparent,
    foregroundColor: blue,
  ),
);

OutlinedButtonThemeData outlinedButtonThemeData = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.zero,
    ),
    side: BorderSide(
      color: black,
    ),
    foregroundColor: black,
  ),
);

BottomNavigationBarThemeData bottomNavigationBarThemeData =
    BottomNavigationBarThemeData(
  backgroundColor: white,
  unselectedItemColor: darkGray,
  selectedItemColor: black,
);

AppBarTheme appBarTheme = AppBarTheme(
  backgroundColor: white,
  foregroundColor: darkGray,
  elevation: 0,
);

TextTheme textTheme = TextTheme(
  headline1: textStyle2.copyWith(
    fontWeight: light,
    fontSize: 96,
  ),
  headline2: textStyle2.copyWith(
    fontWeight: light,
    fontSize: 60,
  ),
  headline3: textStyle2.copyWith(
    fontWeight: regular,
    fontSize: 48,
  ),
  headline4: textStyle2.copyWith(
    fontWeight: regular,
    fontSize: 34,
  ),
  headline5: textStyle2.copyWith(
    fontWeight: bold,
    fontSize: 24,
  ),
  headline6: textStyle2.copyWith(
    fontWeight: medium,
    fontSize: 20,
  ),
  subtitle1: textStyle3.copyWith(
    fontWeight: regular,
    fontSize: 16,
  ),
  subtitle2: textStyle3.copyWith(
    fontWeight: medium,
    fontSize: 14,
  ),
  bodyText1: textStyle3.copyWith(
    fontWeight: regular,
    fontSize: 16,
  ),
  bodyText2: textStyle3.copyWith(
    fontWeight: regular,
    fontSize: 16,
  ),
  button: textStyle2.copyWith(
    fontWeight: bold,
    fontSize: 14,
  ),
  caption: textStyle3.copyWith(
    fontWeight: regular,
    fontSize: 12,
  ),
  overline: textStyle3.copyWith(
    fontWeight: regular,
    fontSize: 10,
  ),
);
