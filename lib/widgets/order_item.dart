import 'package:flutter/material.dart';
import '../providers/orders.dart' as ord;
import 'package:intl/intl.dart';
import '../widgets/order_item.dart';


class OrderItem extends StatelessWidget {
  final ord.OrderItem order;
  const OrderItem(this.order);
  // ignore: use_key_in_widget_constructors
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text("₹ ${order.amount}"),
            subtitle: Text(DateFormat('dd MM yyyy hh:mm').format(order.dateTime)),
            trailing: IconButton(icon: Icon(Icons.expand_more), onPressed: ,),
            ),
            
        ],
      )
    );
  }
}