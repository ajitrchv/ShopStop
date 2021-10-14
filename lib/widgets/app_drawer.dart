import 'package:flutter/material.dart';
import 'package:shopstop/screens/products_overview.dart';
import '../screens/orders_screen.dart';
class AppDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        AppBar(title: const Text("Hello Friend"),
        
        automaticallyImplyLeading: false,
        ),
        const Divider(),
        ListTile(
          leading: Icon(Icons.shop,),
          title: Text('Shop'),
          onTap:() {Navigator.of(context).pushReplacementNamed('/');}
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.my_library_books_outlined,),
          title: const Text('Orders'),
          onTap:() {Navigator.of(context).pushReplacementNamed(OrderScreen.routeName);}
        )
      ]),
    );
  }
}