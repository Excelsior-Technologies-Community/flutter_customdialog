import 'package:flutter/material.dart';
import 'flutter_custom_dialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Dialog Engine")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            CustomDialog.show(
              context,
              child: MyUserDialog(),
            );
          },
          child: Text("Open Custom Dialog"),
        ),
      ),
    );
  }
}

/// This is USER'S dialog (not library)
class MyUserDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.person, size: 50),
          SizedBox(height: 10),
          Text(
            "Profile Dialog",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text("This dialog is fully created by user."),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => CustomDialog.hide(context),
            child: Text("Close"),
          )
        ],
      ),
    );
  }
}
