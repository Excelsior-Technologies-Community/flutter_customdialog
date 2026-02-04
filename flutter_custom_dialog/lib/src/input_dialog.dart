import 'package:flutter/material.dart';
import 'smart_dialog.dart';

class InputDialog {
  static show(
      BuildContext context, {
        required String title,
        String hint = "",
        required Function(String) onSubmit,
      }) {
    TextEditingController controller = TextEditingController();

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
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hint,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                onSubmit(controller.text);
              },
              child: Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}
