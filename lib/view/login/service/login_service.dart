import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:redesign_starbucks/constants/service/service_constants.dart';
import 'package:redesign_starbucks/models/error_response_model.dart';
import 'package:redesign_starbucks/view/login/models/login_request_model.dart';
import 'package:redesign_starbucks/view/login/models/login_response_model.dart';

class LoginService {
  Future<LoginResponseModel> loginRequest(String email, String pass) async {
    final response = await http.post(Uri.parse(ServiceURL.LOGIN_URL),
        body: LoginRequestModel(email: email, password: pass).toJson());

    switch (response.statusCode) {
      case HttpStatus.ok:
        if (LoginResponseModel.fromJson(jsonDecode(response.body)).status ??
            false) {
          return LoginResponseModel.fromJson(jsonDecode(response.body));
        }
        return throw ErrorResponseModel.fromJson(jsonDecode(response.body));
      default:
        return throw ErrorResponseModel.fromJson(jsonDecode(response.body));
    }
  }
}
