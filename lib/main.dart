import 'package:flutter/material.dart';
import 'package:flutter_route/screens/cart_screen.dart';
import 'package:flutter_route/screens/list_item_screen.dart';
import 'package:provider/provider.dart';

import 'models/cart.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Cart(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ListItemScreen(),
        '/cart/items': (context) => const CartScreen(),
      },
    );
  }
}
