## Flutter Custom Dialog

Flutter Custom Dialog is a lightweight and reusable Flutter library that works as a dialog engine and display any custom Flutter widget as a dialog with built-in animation and overlay management.

It allows developers to display any custom Flutter widget as a dialog with built-in animation and overlay handling.

------------------------------

## Features

- Show any widget as a dialog
- Fully custom UI
- Smooth scale + fade animation
- Optional barrier dismiss
- Simple API: show() and hide()
- No external dependencies
- Works with all Flutter layouts

----------------------------

## Preview

https://github.com/user-attachments/assets/f7478a3c-b541-4906-ae52-44d3797994d3

---------------------------

## 📦 Installation

Add this to your pubspec.yaml:
```
dependencies:
  flutter_custom_dialog:
    git:
      url: https://github.com/your-username/flutter_custom_dialog.git
```
Then run:
```
flutter pub get
```
--------------------------

## File Structure
```
flutter_custom_dialog/
│
├─ lib/
│   ├─ flutter_custom_dialog.dart   # Main library file
│   │
│   └─ src/
│       └─ custom_dialog.dart       # Core dialog engine
│
├─ example/
│   └─ main.dart                    # Example usage
│
├─ pubspec.yaml
├─ README.md
└─ LICENSE
```
----------------------------

## Usage
```
Import the package:

import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
```
Show a dialog:
```
CustomDialog.show(
  context,
  child: MyUserDialog(),
);
```
Close dialog:
```
CustomDialog.hide(context);
```
----------------------------------

## Creating Your Own Dialog (User Side)

Users create dialogs in their own files.

Example:
```
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
```
-----------------------------------------

## CustomDialog Properties

| Property      | Type         | Required | Default              | Description                 |
| ------------- | ------------ | -------- | -------------------- | --------------------------- |
| `context`     | BuildContext | Yes      | —                    | Current widget context      |
| `child`       | Widget       | Yes      | —                    | Your custom dialog widget   |
| `dismissible` | bool         | No       | `true`               | Tap outside to close dialog |
| `padding`     | EdgeInsets   | No       | `EdgeInsets.all(16)` | Space around dialog         |


----------------------------------

## How It Works

This package uses a dialog engine pattern:
```
CustomDialog.show(context, child: Widget)
```
---------------------------------

## LoadingDialog Usage
```
LoadingDialog.show(context, text: "Please wait...");
LoadingDialog.hide(context);
```
---------------------------------

## Custom Dialog (Most Powerful Feature)

Users can build any dialog UI:
```
SmartDialog.show(
  context,
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.warning, size: 50),
      Text("Session Expired"),
      ElevatedButton(
        onPressed: () => Navigator.pop(context),
        child: Text("Login"),
      )
    ],
  ),
);
```
---------------------------------

## Advanced Usage

Disable outside tap:
```
CustomDialog.show(
  context,
  dismissible: false,
  child: LoadingUserDialog(),
);
```
--------------------------------

## Auto close after delay:
```
CustomDialog.show(context, child: LoadingUserDialog());

Future.delayed(Duration(seconds: 2), () {
  CustomDialog.hide(context);
});
```
--------------------------------

## MIT License
```
Copyright (c) 2025

Permission is hereby granted, free of charge, to any person obtaining a copy
of this Flutter Custom Dialog library and associated documentation files
(the “Software”), to deal in the Software without restriction, including without
limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND...


```
