import 'package:flutter/material.dart';
import 'package:redesign_starbucks/constants/helpers/navigation_route.dart';
import 'package:redesign_starbucks/view/login/login.dart';
import 'package:redesign_starbucks/widgets/bottom_navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './splash.dart';

abstract class SplashViewModel extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () => {togglePage()});
  }

  Future<void> togglePage() async {
    SharedPreferences cache = await SharedPreferences.getInstance();
    final token = await cache.getString('token');
    if (token!.isEmpty) {
      NavgiationRoute(context, Login());
    } else {
      NavgiationRoute(context, BottomNavigation());
    }
  }
}
