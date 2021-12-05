import 'package:flutter/material.dart';
import 'package:flutter_route/models/product.dart';

class Cart extends ChangeNotifier {
  final List<Product> _products = [];

  List<Product> getProducts() {
    return _products;
  }

  void addProduct(Product product) {
    _products.add(product);
    notifyListeners();
  }

  void removeProduct(Product product) {
    _products.remove(product);
    notifyListeners();
  }
}