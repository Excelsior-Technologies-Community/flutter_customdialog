import 'package:flutter/material.dart';
import 'flutter_custom_dialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Dialog Library")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: () {
                ConfirmDialog.show(
                  context,
                  title: "Delete",
                  message: "Are you sure you want to delete?",
                  onOk: () {
                    print("Deleted");
                  },
                );
              },
              child: Text("Confirm Dialog"),
            ),

            ElevatedButton(
              onPressed: () {
                InputDialog.show(
                  context,
                  title: "Enter Name",
                  hint: "Type here",
                  onSubmit: (value) {
                    print(value);
                  },
                );
              },
              child: Text("Input Dialog"),
            ),

            ElevatedButton(
              onPressed: () {
                LoadingDialog.show(context);
                Future.delayed(Duration(seconds: 2), () {
                  LoadingDialog.hide(context);
                });
              },
              child: Text("Loading Dialog"),
            ),

          ],
        ),
      ),
    );
  }
}
