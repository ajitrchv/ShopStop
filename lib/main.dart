import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShopStop',
      theme: ThemeData(primarySwatch: Colors.green,),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('ShopStop'),),
    body: Center(child: Text('Hi From App'),),);
  }
}