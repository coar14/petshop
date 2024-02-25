import 'package:flutter/material.dart';
import 'package:petshop/providers/cart_provider.dart';
import 'package:petshop/screen/cart_page.dart';
import 'package:petshop/screen/catalog.dart';
import 'package:petshop/screen/profile.dart';
import 'package:petshop/started.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        title: 'Pet Shop Provider',
        debugShowCheckedModeBanner: false,
        initialRoute: '/', // Set the initial route
        routes: {
          '/': (context) => const StartPage(),
          '/cart': (context) => const CartScreen(),
          '/profile': (context) => Profile(),
          '/catalog': (context) => const CatalogScreen()
        },
      ),
    );
  }
}
