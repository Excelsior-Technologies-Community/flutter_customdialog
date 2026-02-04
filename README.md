## Flutter Custom Dialog

Flutter Custom Dialog is a lightweight and reusable Flutter library that works as a dialog engine and display any custom Flutter widget as a dialog with built-in animation and overlay management.

It allows developers to display any custom Flutter widget as a dialog with built-in animation and overlay handling.

------------------------------

## Feature Preview

- Unlimited custom dialogs
- Works with any Flutter widget
- Scale & fade animation
- Dismiss on outside tap
- Clean Material UI
- No UI restrictions
- Future-proof design

----------------------------

## Preview

https://github.com/user-attachments/assets/395c222b-9495-45e2-b94b-dd8daa6079d2

---------------------------

## 📦 Installation

Add this to your pubspec.yaml:
```
dependencies:
  flutter_custom_dialog:
    git:
      url: https://github.com/Excelsior-Technologies-Community/flutter_custom_dialog.git
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
│   ├─ flutter_custom_dialog.dart   # Main export file
│   │
│   └─ src/
│       └─ custom_dialog.dart       # Core dialog engine (ONLY FILE)
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
import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            CustomDialog.show(
              context,
              child: MyDialog(),
            );
          },
          child: Text("Show Dialog"),
        ),
      ),
    );
  }
}
```
----------------------------------

## Creating Your Own Dialog (User Side)

Users create dialogs in their own files.

Example:
```
class MyDialog extends StatelessWidget {
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
          Icon(Icons.warning, size: 50),
          Text("Session Expired"),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => CustomDialog.hide(context),
            child: Text("Login"),
          )
        ],
      ),
    );
  }
}

```
Show it:
```
CustomDialog.show(
  context,
  child: MyDialog(),
);
```
-----------------------------------------

## CustomDialog API

| Method   | Description                     |
| -------- | ------------------------------- |
| `show()` | Displays any widget as a dialog |
| `hide()` | Closes the dialog               |

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

## How It Works

This package uses a dialog engine pattern:
```
SmartDialog.show(context, child: Widget)
```
--------------------------------

## MIT License
```
Copyright (c) 2025

Permission is hereby granted, free of charge, to any person obtaining a copy
of this Flutter Custom Dialog library and associated documentation files
(the “Software”), to deal in the Software without restriction...

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND...

```
