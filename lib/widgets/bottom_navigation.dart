import 'package:flutter/material.dart';
import 'package:redesign_starbucks/constants/enum/custom_icons.dart';
import 'package:redesign_starbucks/init/extension/context_extension.dart';
import 'package:redesign_starbucks/view/detail/detail.dart';
import 'package:redesign_starbucks/view/home/home.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _tabIndex = 0;

  List<Widget> pageList = [
    Home(),
    Detail(),
    Center(
      child: Text('Credit Kart Page'),
    ),
    Center(
      child: Text('Locaiton Page'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.colors.background,
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(context.width * 0.075),
              topRight: Radius.circular(context.width * 0.075)),
          child: BottomNavigationBar(
              currentIndex: _tabIndex,
              onTap: changePage,
              unselectedItemColor: context.colors.secondary,
              elevation: 200,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: context.colors.primary,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    CustomIcons.star,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(CustomIcons.coffee),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(CustomIcons.creditcard),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(CustomIcons.location),
                  label: "",
                ),
              ]),
        ),
        body: pageList[_tabIndex]);
  }

  Radius bottomRadius(BuildContext context) =>
      Radius.circular(context.width * .075);

  void changePage(value) => setState(() {
        _tabIndex = value;
      });
}
