import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_ecommerce_checkout/models/cart_model.dart';
import 'package:intl/intl.dart';

class OrderSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context);
    final currencyFormat = NumberFormat.currency(locale: 'en_US', symbol: '$');

    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Subtotal: ${currencyFormat.format(cart.total)}'),
            Text('Shipping: ${currencyFormat.format(10.0)}'), // Example shipping cost
            Divider(),
            Text(
              'Total: ${currencyFormat.format(cart.total + 10.0)}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
