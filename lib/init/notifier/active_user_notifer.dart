import 'package:flutter/material.dart';

class ActiveUserNotifer extends ChangeNotifier {
  String _token = '';
  void setToken(payload) => _token = payload;
  get getToken => _token;
}
