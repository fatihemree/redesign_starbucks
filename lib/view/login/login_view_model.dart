import 'package:flutter/material.dart';
import 'package:redesign_starbucks/models/error_response_model.dart';
import 'package:redesign_starbucks/view/login/service/login_service.dart';
import 'package:redesign_starbucks/widgets/show_dialog.dart';
import 'package:redesign_starbucks/widgets/snack_bar.dart';
import './login.dart';
import './models/login_response_model.dart';

abstract class LoginViewModel extends State<Login> {
  late FocusNode emailNode;
  late FocusNode passNode;
  late TextEditingController emailController;
  late TextEditingController passController;
  late LoginService service;

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
      loginUser = await service.loginRequest('test@test.co', '123456');
      changeLoading();
      ShowDialog(context, loginUser!.toJson().toString());
    } on ErrorResponseModel catch (e) {
      SnackBarShow(context, e.message.toString());
    }
  }

  // ShowDialog(e.message.toString(), context);

  void changeLoading() => isLoading = !isLoading;
}
