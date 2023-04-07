

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud/models/User.dart';
import 'package:flutter_crud/provider/Users.dart';
import 'package:provider/provider.dart';

import '../routes/app_routes.dart';

class UserTile extends StatelessWidget {

  final User user;

  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {

    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty 
      ? CircleAvatar(child: Icon(Icons.person))
      : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));

    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget> [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.USER_FORM,
                  arguments: user,
                 );
              }, 
              color: Colors.orange,
              icon: Icon(Icons.edit),
            ),
            IconButton(
              onPressed: () {
                showDialog(
                  context: context, 
                  builder: (ctx) => AlertDialog(
                    title: Text('Excluir Usuario'),
                    content: Text('Tem  certeza??'),
                    actions: <Widget>[
                      TextButton(
                        child:Text('Não'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }, 
                      ),
                      TextButton(
                        child:Text('Sim'),
                        onPressed: () {
                          Provider.of<Users>(context, listen: false).remove(user);
                           Navigator.of(context).pop();
                        }, 
                      ),
                      
                    ],
                  ));
              }, 
              color: Colors.red,
              icon: Icon(Icons.delete),
            ),
          ]),  
      )
    );
  }
}