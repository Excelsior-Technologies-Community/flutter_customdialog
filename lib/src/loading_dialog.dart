import 'package:flutter/material.dart';
import 'smart_dialog.dart';

class LoadingDialog {
  static show(BuildContext context, {String text = "Loading..."}) {
    SmartDialog.show(
      context,
      dismissible: false,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(),
            SizedBox(width: 16),
            Text(text),
          ],
        ),
      ),
    );
  }

  static hide(BuildContext context) {
    Navigator.pop(context);
  }
}
