import 'package:flutter/material.dart';
import 'package:flutter_crud/provider/Users.dart';
import 'package:flutter_crud/routes/app_routes.dart';
import 'package:flutter_crud/views/User_form.dart';
import 'package:flutter_crud/views/User_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Users(),
        )
      ],     
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        // home: UserList(),
        routes: {
          AppRoutes.HOME: (_) => UserList(),
          AppRoutes.USER_FORM: (_) => UserForm()
        },
      ), 
    );
  }



  //  Widget build(BuildContext context) {
  //   return ChangeNotifierProvider(
  //   create: (ctx) => Users(),
  //     child: MaterialApp(
  //       title: 'Flutter Demo',
  //       theme: ThemeData(
  //         primarySwatch: Colors.blue,
  //       ),
  //       home: UserList()
  //     ),
  //   );
  // }
}
