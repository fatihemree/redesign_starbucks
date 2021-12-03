import 'package:flutter/material.dart';
import 'package:redesign_starbucks/constants/helpers/navigation_route.dart';
import 'package:redesign_starbucks/models/error_response_model.dart';
import 'package:redesign_starbucks/view/home/home.dart';
import 'package:redesign_starbucks/view/login/service/login_service.dart';
import 'package:redesign_starbucks/widgets/show_dialog.dart';
import 'package:redesign_starbucks/widgets/snack_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './login.dart';
import './models/login_response_model.dart';

abstract class LoginViewModel extends State<Login> {
  late FocusNode emailNode;
  late FocusNode passNode;
  late TextEditingController emailController;
  late TextEditingController passController;
  late LoginService service;

  late SharedPreferences cache;
  LoginResponseModel? loginUser;

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    emailNode = FocusNode();
    passNode = FocusNode();

    emailController = TextEditingController();
    passController = TextEditingController();
    service = LoginService();
  }

  Future<void> postRequest() async {
    try {
      changeLoading();
      SharedPreferences cache = await SharedPreferences.getInstance();
      loginUser = await service.loginRequest('test@test.com', '123456');
      await cache.setString('token', loginUser!.data!.token.toString());
      NavgiationRoute(context, Home());
      changeLoading();
    } on ErrorResponseModel catch (e) {
      SnackBarShow(context, e.message.toString());
    }
  }

  // ShowDialog(e.message.toString(), context);

  void changeLoading() => setState(() {
        isLoading = !isLoading;
      });
}
