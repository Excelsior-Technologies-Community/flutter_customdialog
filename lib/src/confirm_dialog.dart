import 'package:flutter/material.dart';
import 'smart_dialog.dart';

class ConfirmDialog {
  static show(
      BuildContext context, {
        required String title,
        required String message,
        String okText = "OK",
        String cancelText = "Cancel",
        required VoidCallback onOk,
      }) {
    SmartDialog.show(
      context,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(message, textAlign: TextAlign.center),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(cancelText),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      onOk();
                    },
                    child: Text(okText),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
