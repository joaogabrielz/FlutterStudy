import 'package:flutter/material.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      home: HomePage()
    );

    // return Container(
    //   child: Center(
    //     child: Text(
    //       title,
    //       textDirection: TextDirection.ltr,
    //       style: TextStyle(color: Colors.blue, fontSize: 200.0),
    //     ),
    //   ),
    // );
  }
}