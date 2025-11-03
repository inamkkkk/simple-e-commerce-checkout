import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_ecommerce_checkout/screens/checkout_screen.dart';
import 'package:simple_ecommerce_checkout/models/cart_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        title: 'E-commerce Checkout',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CheckoutScreen(),
      ),
    );
  }
}
