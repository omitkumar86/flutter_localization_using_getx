import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  fontFamily: 'TitilliumWeb',
  primaryColor: Color(0xFF0B4461),
  cardColor: null,
  canvasColor: null,
  drawerTheme: DrawerThemeData(backgroundColor: Color(0xFF0B4461),
      shadowColor: Color(0xFF0B4461)),
  disabledColor: null,
  applyElevationOverlayColor: null,
  dialogBackgroundColor: null,
  dividerColor: null,
  focusColor: null,
  hoverColor: null,
  indicatorColor: null,
  colorScheme: null,
  colorSchemeSeed: null,
  primaryColorDark: null,
  primaryColorLight: null,
  scaffoldBackgroundColor: Color(0xFF0B4461),
  secondaryHeaderColor: null,
  shadowColor: null,
  //splashColor: Color(0xffFFFFFF),
  toggleableActiveColor: null,
  unselectedWidgetColor: null,
  brightness: Brightness.dark,
  highlightColor: Color(0xff0F2333),
  //hintColor: Color(0xFFc7c7c7),
  pageTransitionsTheme: PageTransitionsTheme(builders: {
    TargetPlatform.android: ZoomPageTransitionsBuilder(),
    TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
    TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
  }),
);