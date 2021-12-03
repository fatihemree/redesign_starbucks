import 'package:flutter/material.dart';
import 'package:redesign_starbucks/init/extension/context_extension.dart';
import './splash_view_model.dart';

class SplashView extends SplashViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      body: Container(
        decoration: splashDecoration(context),
        child: Center(
          child: Image.asset('assets/image/splashLogo.png'),
        ),
      ),
    );
  }

  BoxDecoration splashDecoration(BuildContext context) {
    return BoxDecoration(
      color: context.colors.primaryVariant,
      image: DecorationImage(
        image: AssetImage('assets/image/splashBg.png'),
      ),
    );
  }
}
