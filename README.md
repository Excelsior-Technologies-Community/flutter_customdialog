## Flutter Custom Dialog

Flutter Custom Dialog is a lightweight and reusable Flutter library that helps developers create beautiful dialogs easily and build any custom dialog UI with minimal effort.

It provides ready-made dialog templates and also allows building fully custom dialogs using pure Flutter widgets.

------------------------------

## Feature Preview

- Confirm dialog (Yes / No)
- Input dialog (Text input)
- Loading dialog (Progress)
- Fully custom dialog support
- Scale & fade animation
- Dismiss on outside tap
- Clean Material UI

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
│   ├─ flutter_custom_dialog.dart   # Main library file
│   │
│   └─ src/
│       ├─ smart_dialog.dart        # Core dialog engine
│       ├─ confirm_dialog.dart      # Confirm dialog
│       ├─ input_dialog.dart        # Input dialog
│       └─ loading_dialog.dart      # Loading dialog
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
            ConfirmDialog.show(
              context,
              title: "Delete",
              message: "Are you sure?",
              onOk: () {},
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

## ConfirmDialog Properties

| Property     | Type     | Required | Default  | Description                 |
| ------------ | -------- | -------- | -------- | --------------------------- |
| `title`      | String   | Yes      | —        | Dialog title text           |
| `message`    | String   | Yes      | —        | Dialog message text         |
| `okText`     | String   | No       | "OK"     | Confirm button text         |
| `cancelText` | String   | No       | "Cancel" | Cancel button text          |
| `onOk`       | Function | Yes      | —        | Callback when OK is pressed |

## InputDialog Properties

| Property   | Type             | Required | Default | Description     |
| ---------- | ---------------- | -------- | ------- | --------------- |
| `title`    | String           | Yes      | —       | Dialog title    |
| `hint`     | String           | No       | ""      | TextField hint  |
| `onSubmit` | Function(String) | Yes      | —       | Submit callback |

----------------------------------

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
(the “Software”), to deal in the Software without restriction, including without
limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions...

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND...
```
