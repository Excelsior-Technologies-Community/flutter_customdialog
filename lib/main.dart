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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: () {
                CustomDialog.show(
                  context,
                  child: MyUserDialog(),
                );
              },
              child: Text("Profile Dialog"),
            ),

            SizedBox(height: 30,),

            ElevatedButton(
              onPressed: () {
                CustomDialog.show(
                  context,
                  child: ConfirmUserDialog(),
                );
              },
              child: Text("Confirm Dialog"),
            ),

            SizedBox(height: 30,),

            ElevatedButton(
              onPressed: () {
                CustomDialog.show(
                  context,
                  child: InputUserDialog(),
                );
              },
              child: Text("Input Dialog"),
            ),
            
            SizedBox(height: 30,),

            ElevatedButton(
              onPressed: () {
                CustomDialog.show(
                  context,
                  child: LoadingUserDialog(),
                );

                Future.delayed(Duration(seconds: 2), () {
                  CustomDialog.hide(context);
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

////////////////////////////////////////////////////////
/// USER DIALOGS BELOW (ALL CUSTOM)
////////////////////////////////////////////////////////

class MyUserDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return dialogContainer(
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.person, size: 50),
          SizedBox(height: 10),
          Text("Profile Dialog",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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

class ConfirmUserDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return dialogContainer(
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.warning, size: 50, color: Colors.red),
          SizedBox(height: 10),
          Text("Delete?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text("Are you sure you want to delete this item?"),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () => CustomDialog.hide(context),
                  child: Text("Cancel"),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    CustomDialog.hide(context);
                    print("Deleted");
                  },
                  child: Text("Yes"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class InputUserDialog extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return dialogContainer(
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Enter Name",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: "Type here",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              print(controller.text);
              CustomDialog.hide(context);
            },
            child: Text("Submit"),
          )
        ],
      ),
    );
  }
}

class LoadingUserDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return dialogContainer(
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator(),
          SizedBox(width: 16),
          Text("Loading...")
        ],
      ),
    );
  }
}

////////////////////////////////////////////////////////
/// SMALL HELPER (FOR SAME UI STYLE)
////////////////////////////////////////////////////////

Widget dialogContainer(Widget child) {
  return Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
    ),
    child: child,
  );
}
