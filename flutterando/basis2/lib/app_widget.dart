

import 'package:basis2/aoo_controller.dart';
import 'package:basis2/home_page.dart';
import 'package:flutter/material.dart';




class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
    animation: AppController.instance, 
    
    builder: (context, child){
      return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: AppController.instance.isDrakTheme ? 
        Brightness.dark : Brightness.light),
      home: HomePage()
    );
    },);
  }

}