


import 'package:basis2/aoo_controller.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        // actions: [CustomSwitch(),],
      ),
  
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child:ListView(
          // scrollDirection: Axis.horizontal,
          children: [
            Text('Contador: $counter'),
            CustomSwitch(),
             Container(
              width: 50,
              height: 50,
              color: Colors.black
            ),
              Container(
              width: 50,
              height: 50,
              color: Colors.black
            ),
          ],
      ),
      ),
      
 





// pasar da tela columns,rows da erro de overflow

// Container(
//         width: double.infinity,
//         height: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           // crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//         Text('Contador: $counter'),
//          Container(
//           padding: EdgeInsets.all(20.0),
//         ),
//         CustomSwitch(),
//         Container(
//           height: 50,
//         ),
//         Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               width: 50,
//               height: 50,
//               color: Colors.black
//             ),
//              Container(
//               width: 50,
//               height: 50,
//               color: Colors.black
//             ),
//              Container(
//               width: 50,
//               height: 50,
//               color: Colors.black
//             )
//           ],
//         )
//         ],
//       ),
//       ),



        // Container(
        //         width: double.infinity,
        //         height: double.infinity,
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //         Text('Contador: $counter'),
        //         CustomSwitch(),
        //         ],
        //       ),
        //       ),

      
      // Center(
      //   child: CustomSwitch(),
      // ),

      // Container( // SINGLE-RENDER
      //         height: 200,
      //         width: 200,
      //         color: Colors.black,
      //         child: Align( // or Center,flex, transform - MULTI-RENDER, single child render..
      //             alignment: Alignment.center,
      //             child: Container(
      //              height: 20,
      //              width: 20,
      //              color: Colors.green,
      //           ),
      //         ),
      //       ),

      // Center(
      //   child: GestureDetector(
      //     child: Text('Contador: $counter', style: TextStyle(fontSize: 20),),
      //       onTap: () {
      //         setState(() {
      //           counter = 0;
      //           print('$counter');
      //         });
      //       },
      // )),

       floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
                counter++;
                print('$counter');
          });
        },
      ),
    );
  }

}


class CustomSwitch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Switch(
          value: AppController.instance.isDrakTheme, 
          onChanged: (value){
            AppController.instance.changeTheme();
        });
  }
}