import 'package:flutter/material.dart';
import 'package:flutter_route/models/cart.dart';
import 'package:flutter_route/models/product.dart';
import 'package:provider/src/provider.dart';

class ProductRow extends StatelessWidget {
  final Product product;

  const ProductRow({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(product.name, style: Theme.of(context).textTheme.headline5),
          Text(product.price.toString(),
              style: Theme.of(context).textTheme.headline5),
          _AddProductButton(product: product),
        ],
      ),
    );
  }
}

class _AddProductButton extends StatelessWidget {
  final Product product;

  const _AddProductButton({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isInCart = context.select<Cart, bool>(
      (cart) => cart.getProducts().contains(product),
    );

    return TextButton(
        onPressed: isInCart
            ? null
            : () {
                var cart = context.read<Cart>();
                cart.addProduct(product);
              },
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
            if (states.contains(MaterialState.pressed)) {
              return Theme.of(context).primaryColor;
            }
            return null; // Defer to the widget's default.
          }),
        ),
        child: isInCart
            ? const Icon(Icons.check, semanticLabel: 'ADD')
            : const Text('ADD'));
  }
}
