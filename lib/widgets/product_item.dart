import 'package:flutter/material.dart';
import '../screens/product_detail_screen.dart';

class productItem extends StatelessWidget {
  //const productItem({ Key? key }) : super(key: key);
  final String id;
  final String title;
  final String imageUrl;
  final double price;
  productItem(this.id, this.title, this.imageUrl, this.price);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: Card(
          elevation: 5,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(ProductDetail.routeName, arguments: id);
            },
            child: Image.network(imageUrl,
                fit: BoxFit.cover, width: 50, height: 50),
          ),
        ),
        header: Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            '₹.$price',
            style: const TextStyle(backgroundColor: Colors.white60),
          ),
        ),
        footer: GridTileBar(
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black54,
          leading: IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
            // ignore: deprecated_member_use
            color: Theme.of(context).accentColor,
          ),
          trailing: IconButton(
            icon: const Icon(Icons.shopping_bag),
            onPressed: () {},
            // ignore: deprecated_member_use
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}
