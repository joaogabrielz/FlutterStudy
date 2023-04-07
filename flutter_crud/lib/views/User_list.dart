import 'package:flutter/material.dart';
import 'package:flutter_crud/components/User_tile.dart';
import 'package:flutter_crud/data/dummy_users.dart';
import 'package:flutter_crud/models/User.dart';
import 'package:flutter_crud/provider/Users.dart';
import 'package:flutter_crud/routes/app_routes.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final users = { ...DUMMY_USERS };
    final Users users = Provider.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de Usuarios '),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                 Navigator.of(context).pushNamed(
                  AppRoutes.USER_FORM
                 );
                },
                icon: Icon(Icons.add))
          ],
        ),
        body: ListView.builder(
          // itemCount: users.length,
          // itemBuilder: ((context, index) =>
          //   UserTile(users.values.elementAt(index))
          itemCount: users.count,
          itemBuilder: ((context, index) => UserTile(users.byIndex(index))),
        ));
  }
}
