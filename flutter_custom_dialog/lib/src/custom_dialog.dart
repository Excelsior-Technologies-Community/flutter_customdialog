import 'package:flutter/material.dart';

class CustomDialog {

  /// Show any custom dialog widget
  static show(
      BuildContext context, {
        required Widget child,
        bool dismissible = true,
        EdgeInsets padding = const EdgeInsets.all(16),
      }) {
    showGeneralDialog(
      context: context,
      barrierDismissible: dismissible,
      barrierLabel: "",
      transitionDuration: Duration(milliseconds: 200),
      pageBuilder: (_, __, ___) {
        return Center(
          child: Material(
            color: Colors.transparent,
            child: Padding(
              padding: padding,
              child: child,
            ),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return Transform.scale(
          scale: anim.value,
          child: Opacity(
            opacity: anim.value,
            child: child,
          ),
        );
      },
    );
  }

  /// Close dialog
  static hide(BuildContext context) {
    Navigator.pop(context);
  }
}
