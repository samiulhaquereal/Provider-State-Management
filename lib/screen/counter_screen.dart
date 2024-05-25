import 'package:flutter/material.dart';
import 'package:flutterproviderpractice/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class BasicCounter extends StatelessWidget {
  const BasicCounter({super.key});

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CounterProvider>(context,listen: false);
    print('Real');
    return SafeArea(child: Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        countProvider.setCount();
      },child: Icon(Icons.add)),
      body: Center(
        child: Consumer<CounterProvider>(builder: (BuildContext context, value, Widget? child) {
          return Text(value.num.toString(),style: TextStyle(fontSize: 30));
        },
      ))
    ));
  }

/*@override
  Widget build(BuildContext context) {
    print('Real');
    return SafeArea(child: Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        context.read<CounterProvider>().setCount();
      },child: Icon(Icons.add)),
      body: Center(
        child: Text(context.watch<CounterProvider>().num.toString(),style: TextStyle(fontSize: 30)))
    ));
  }*/
}
