import 'package:flutter/material.dart';

class SnackBarShow {
  final String message;
  final BuildContext context;
  SnackBarShow(this.context, this.message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
}
