import 'package:flutter/material.dart';

class PaymentDetailsForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(labelText: 'Card Number'),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your card number';
            }
            return null;
          },
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Expiry Date'),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your expiry date';
            }
            return null;
          },
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'CVV'),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your CVV';
            }
            return null;
          },
        ),
      ],
    );
  }
}
