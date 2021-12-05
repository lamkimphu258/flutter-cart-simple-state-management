import 'package:flutter/material.dart';
import 'package:flutter_route/components/list_product.dart';
import 'package:flutter_route/components/product_row.dart';
import 'package:flutter_route/models/product.dart';

class ListItemScreen extends StatelessWidget {
  const ListItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Item'),
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).pushNamed('/cart/items');
          }, icon: const Icon(Icons.shopping_cart)),
        ],
      ),
      body: ListProduct(products: ProductList.products),
    );
  }
}