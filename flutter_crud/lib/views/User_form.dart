import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/User.dart';
import '../provider/Users.dart';

class UserForm extends StatefulWidget {

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final _form = GlobalKey<FormState>();

  final Map<String, String> _formData = {}; 
 // convert statefull
  void _loadFormatData(User user){
    if(user != null){
    _formData['id'] = user.id;
    _formData['name'] = user.name;
    _formData['email'] = user.email;
    _formData['avatarUrl'] = user.avatarUrl;
    }
  }

  @override
  void didChangeDependencies() {
    
    super.didChangeDependencies();

    final user;

    if(ModalRoute.of(context)!.settings.arguments != null) {
      user = ModalRoute.of(context)!.settings.arguments as User;
    }
    else {
      user = User(
        id: '', 
        name: '', 
        email: '', 
        avatarUrl: ''
      );
    }
    _loadFormatData(user);

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de Usuário'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              final isValid = _form.currentState!.validate();

              if(isValid){
                _form.currentState?.save();

                Provider.of<Users>(context, listen: false).put(
                  User(
                    id: _formData['id'] ?? '',
                    name: _formData['name']!,
                    email: _formData['email']!,
                    avatarUrl: _formData['avatarUrl']!,
                  )
                );
                
                Navigator.of(context).pop();
              }
            }, 
            icon: Icon(Icons.save))
        ],
      ),

      body: Padding(
        padding: EdgeInsets.all(15),
          child: Form(
            key: _form,
            child: Column(
              children: <Widget>[
                TextFormField(
                  initialValue: _formData['name'],
                  decoration: InputDecoration(labelText: 'Nome'),
                  validator: (value) {
                    if(value == null || value.trim().isEmpty){
                      return 'Nome inválido!';
                    }
                    if(value.trim().length <= 3){
                      return 'Nome deve ter no mínimo 3 letras';
                    }
                  },
                  onSaved: (value) => _formData['name'] = value!,
                ),
                TextFormField(
                   initialValue: _formData['email'],
                  decoration: InputDecoration(labelText: 'E-mail'),
                      onSaved: (value) => _formData['email'] = value!,
                ),
                TextFormField(
                   initialValue: _formData['avatarUrl'],
                  decoration: InputDecoration(labelText: 'URL avatar'),
                      onSaved: (value) => _formData['avatarUrl'] = value!,
                )
              ],
            )),
        ),
    );
  }
}