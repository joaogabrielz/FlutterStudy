//statefull para mudar visualmente precisa ser
// modificado o estado, entao explicitamente, tem de dizer q o estado vai ser modificado
// o estado vai ser reconstruido novamente

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
  
}

class HomePageState extends State<HomePage> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(child: GestureDetector(child: Text('Contador: $counter'), onTap: (){
          setState(() {
          counter++;
          print(counter);
          });
        },)),
      );
  }

}