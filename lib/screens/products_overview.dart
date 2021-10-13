

import 'package:flutter/material.dart';
import '../widgets/products_grid.dart';



enum filterOptions{
  favorites,
  all,
}

// ignore: use_key_in_widget_constructors
class ProductsOverview extends StatefulWidget {
  @override
  State<ProductsOverview> createState() => _ProductsOverviewState();
}

class _ProductsOverviewState extends State<ProductsOverview> {

  var _showFavorites = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShopStop'),
        actions: [
          PopupMenuButton(

          onSelected: (filterOptions selectedValue) {

            setState(() {
            if(selectedValue == filterOptions.favorites) {
              _showFavorites = true;
            }
           else {
              _showFavorites = false;
            }              
            });
            },  
          icon:const Icon(Icons.swap_vertical_circle_rounded),
          itemBuilder: (_) => [
            const PopupMenuItem(child: Text('Favorites'), value: filterOptions.favorites),
            const PopupMenuItem(child: Text('All'), value: filterOptions.all)
          ]
          ,)
        ]
      ),
      body: ProductsGrid(_showFavorites),
    );
  }
}

