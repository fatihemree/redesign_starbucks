import 'package:flutter/material.dart';
import 'package:redesign_starbucks/view/splash/splash.dart';
import './init/theme/theme_colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        scaffoldBackgroundColor: ThemeColors.background,
        fontFamily: 'Inter',
        colorScheme: ColorScheme(
          background: ThemeColors.background,
          onBackground: ThemeColors.dark,
          primary: ThemeColors.mainGreen,
          primaryVariant: ThemeColors.darkGreen,
          onPrimary: Colors.white,
          surface: ThemeColors.white,
          onSurface: ThemeColors.dark,
          secondary: ThemeColors.grey,
          secondaryVariant: ThemeColors.darkGrey,
          error: ThemeColors.darkRed,
          onSecondary: ThemeColors.white,
          onError: ThemeColors.darkRed,
          brightness: Brightness.light,
        ),
        appBarTheme: AppBarTheme(backgroundColor: Colors.white),
        textTheme: TextTheme(
          headline6: TextStyle(
              fontSize: 30,
              color: ThemeColors.dark,
              fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 14.0, color: ThemeColors.darkGrey),
        ),
      ),
      home: Splash(),
    );
  }
}
