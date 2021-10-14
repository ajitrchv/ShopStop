import 'dart:js';

import 'package:flutter/material.dart';
import '../providers/orders.dart' show Orders;
import 'package:provider/provider.dart';
import '../widgets/order_item.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Your Orders:"),
        ),
        body: ListView.builder(
            itemCount: orderData.orders.length, 
            itemBuilder: (ctx,indx) => OrderItem(orderData.orders[indx])),);
  }
}
