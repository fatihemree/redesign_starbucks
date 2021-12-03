import 'package:flutter/material.dart';

class NavgiationRoute {
  final dynamic page;
  final BuildContext context;

  NavgiationRoute(this.context, this.page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}
