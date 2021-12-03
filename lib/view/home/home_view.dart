import 'package:flutter/material.dart';
import 'package:redesign_starbucks/constants/enum/custom_icons.dart';
import 'package:redesign_starbucks/init/extension/context_extension.dart';
import './home_view_model.dart';

class HomeView extends HomeViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      appBar: customAppBar(context, 'Starbucks'),
      body: Center(
        child: Text('Home'),
      ),
    );
  }

  AppBar customAppBar(BuildContext context, String title) {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
            onPressed: () => {},
            icon: Icon(
              CustomIcons.alarm,
              color: context.colors.primary,
            )),
        IconButton(
            onPressed: () => {},
            icon: Icon(
              CustomIcons.menu,
              color: Colors.black,
            ))
      ],
      title: Text(title,
          style: TextStyle(color: context.colors.primary, fontSize: 20)),
    );
  }
}
