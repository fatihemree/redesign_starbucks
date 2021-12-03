import 'package:flutter/material.dart';
import './login.dart';

abstract class LoginViewModel extends State<Login> {
  late FocusNode emailNode;
  late FocusNode passNode;
  late TextEditingController emailController;
  late TextEditingController passController;

  @override
  void initState() {
    super.initState();
    emailNode = FocusNode();
    passNode = FocusNode();

    emailController = TextEditingController();
    passController = TextEditingController();
  }
}
