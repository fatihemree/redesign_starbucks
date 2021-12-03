import 'package:flutter/material.dart';
import './init/extension/context_extension.dart';
import './init/theme/theme_colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
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
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 72.0, color: Colors.blue, fontWeight: FontWeight.bold),
          headline6: TextStyle(
              fontSize: 36.0, color: Colors.amber, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: Deneme(),
    );
  }
}

class Deneme extends StatelessWidget {
  const Deneme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: Text('HelloWord', style: Theme.of(context).textTheme.headline1),
        child: Text('HelloWord', style: context.textTheme.headline1),
      ),
    );
  }
}
