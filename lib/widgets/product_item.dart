import 'package:flutter/material.dart';
import 'package:shopstop/providers/cart.dart';
import '../providers/products.dart';
import '../providers/product.dart';
import '../screens/product_detail_screen.dart';
import 'package:provider/provider.dart';



class productItem extends StatelessWidget {
  //const productItem({ Key? key }) : super(key: key);
  // final String id;
  // final String title;
  // final String imageUrl;
  // final double price;
  // productItem(this.id, this.title, this.imageUrl, this.price);

  @override
  Widget build(BuildContext context) {

    //++++++++++++++++++++providers=======================
    
    final product= Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context);

    //==================================================
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: Card(
          elevation: 5,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(ProductDetail.routeName, arguments: product.id);
            },
            child: Image.network(product.imageUrl,
                fit: BoxFit.cover, width: 50, height: 50),
          ),
        ),
        header: Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            '₹.${product.price}',
            style: const TextStyle(backgroundColor: Colors.white60),
          ),
        ),
        footer: GridTileBar(
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black54,

//===================  using consumer ==========================

          leading: Consumer<Product>(
            builder: (ctx, product, child) =>
            IconButton(
              icon: (product.isFavorite? const Icon(Icons.favorite_rounded):const Icon(Icons.favorite_outline_sharp)),
              onPressed: () {product.toggleFavoriteStatus();},
              // ignore: deprecated_member_use
              color: Theme.of(context).accentColor,
            ),
          ),

//===============================================================

          trailing: IconButton(
            icon: const Icon(Icons.shopping_bag),
            onPressed: () {
              cart.addItem(product.id, product.price, product.title);
            },


//=================================================================            
            // ignore: deprecated_member_use
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}
