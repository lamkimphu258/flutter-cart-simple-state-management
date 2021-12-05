import 'package:flutter/material.dart';
import 'package:flutter_route/components/product_row.dart';
import 'package:flutter_route/models/product.dart';

class ListProduct extends StatelessWidget {
  final List<Product> products;
  
  const ListProduct({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        var product = products[index];
        return ProductRow(product: product);
      },
    );
  }
}
