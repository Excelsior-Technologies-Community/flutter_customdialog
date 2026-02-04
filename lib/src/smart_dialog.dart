import 'package:flutter/material.dart';

class SmartDialog {
  static show(
      BuildContext context, {
        required Widget child,
        bool dismissible = true,
      }) {
    showDialog(
      context: context,
      barrierDismissible: dismissible,
      builder: (_) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: child,
      ),
    );
  }
}
