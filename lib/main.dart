import 'package:flutter/material.dart';
import 'package:flutterproviderpractice/dashboad.dart';
import 'package:flutterproviderpractice/provider/counter_provider.dart';
import 'package:provider/provider.dart';

void main() {
  // For Multi- Provider
  /*runApp(
      MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> CounterProvider())
      ],
      child: const MyApp())
  );*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=> CounterProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Dashboard(),
      ),
    );
  }
}