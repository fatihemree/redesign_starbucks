import 'package:flutter/material.dart';
import 'package:redesign_starbucks/view/splash/splash.dart';
import 'package:redesign_starbucks/widgets/bottom_navigation.dart';
import './init/theme/theme_colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: customThemeData(),
      // home: Splash(),
      home: Splash(),
    );
  }

  ThemeData customThemeData() {
    return ThemeData(
        scaffoldBackgroundColor: ThemeColors.background,
        fontFamily: 'Inter',
        bottomAppBarTheme: BottomAppBarTheme(color: Colors.black, elevation: 5),
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
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
        ));
  }
}
