import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_ecommerce_checkout/models/cart_model.dart';
import 'package:simple_ecommerce_checkout/widgets/shipping_address_form.dart';
import 'package:simple_ecommerce_checkout/widgets/payment_details_form.dart';
import 'package:simple_ecommerce_checkout/widgets/order_summary.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checkout')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Shipping Address', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ShippingAddressForm(),
              SizedBox(height: 20),
              Text('Payment Details', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              PaymentDetailsForm(),
              SizedBox(height: 20),
              Text('Order Summary', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              OrderSummary(),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Process the order
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Processing Order')),
                    );
                  }
                },
                child: Text('Place Order'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
