import 'package:flutter/material.dart';
import 'package:flutterproviderpractice/screen/counter_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> BasicCounter()));
          }, child: Text('Basic Counter'))
        ],
      ),
    ));
  }
}
