import 'package:flutter/material.dart';

class ShowDialog {
  final String message;
  final BuildContext context;
  ShowDialog(this.message, this.context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(message),
        ),
      ),
    );
  }
}
