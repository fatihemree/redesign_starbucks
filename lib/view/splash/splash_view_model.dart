import 'package:flutter/material.dart';
import 'package:redesign_starbucks/constants/helpers/navigation_route.dart';
import 'package:redesign_starbucks/view/login/login.dart';
import './splash.dart';

abstract class SplashViewModel extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () => {NavgiationRoute(context, Login())});
  }
}

// void PageRoute(context, page) =>
//     Navigator.push(context, MaterialPageRoute(builder: (context) => page));
