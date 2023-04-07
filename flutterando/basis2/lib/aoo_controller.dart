import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {

  static AppController instance = AppController();
  
  bool isDrakTheme = false;

  changeTheme() {
    isDrakTheme = !isDrakTheme;
    notifyListeners();
  }

}