import 'package:flutter/material.dart';
import 'package:flutter_route/components/list_product.dart';
import 'package:flutter_route/models/cart.dart';
import 'package:provider/src/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cart = context.read<Cart>();
    var productsInCart = cart.getProducts();

    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: ListProduct(
        products: productsInCart,
      ),
    );
  }
}
