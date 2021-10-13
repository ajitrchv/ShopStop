import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../screens/products_overview.dart';
import '../screens/product_detail_screen.dart';
import '../providers/products.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        title: 'ShopStop',
        theme: ThemeData(primarySwatch: Colors.green, 
        // ignore: deprecated_member_use
        accentColor: Colors.deepOrangeAccent,
        fontFamily: 'Lato',),
        home: ProductsOverview(),
        routes: {
          ProductDetail.routeName: (ctx) => ProductDetail(),
        },
      ),
=======
    return MaterialApp(
      title: 'ShopStop',
      theme: ThemeData(primarySwatch: Colors.green,),
      home: MyHomePage(),
>>>>>>> 3746ef23a1130118820370c5415e5d38e817ab2f
    );
  }
}

<<<<<<< HEAD
// class MyHomePage extends StatelessWidget {
//   @override 
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: const Text('ShopStop'),),
//     body: Center(child: Text('Hi From App'),),);
//   }
// }
=======
class MyHomePage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('ShopStop'),),
    body: Center(child: Text('Hi From App'),),);
  }
}
>>>>>>> 3746ef23a1130118820370c5415e5d38e817ab2f
