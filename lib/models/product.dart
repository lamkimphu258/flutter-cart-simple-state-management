class Product {
  final int id;
  final String name;
  final double price;

  const Product({required this.id, required this.name, required this.price});
}

class ProductList {
  static List<Product> products = [
    const Product(id: 1, name: 'Product 1', price: 99.9),
    const Product(id: 2, name: 'Product 2', price: 199.9),
    const Product(id: 3, name: 'Product 3', price: 299.9),
    const Product(id: 4, name: 'Product 4', price: 399.9),
    const Product(id: 5, name: 'Product 5', price: 499.9),
    const Product(id: 6, name: 'Product 6', price: 599.9),
  ];
}