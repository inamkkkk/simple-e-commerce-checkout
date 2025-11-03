import 'package:flutter/material.dart';

class ShippingAddressForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(labelText: 'Full Name'),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your name';
            }
            return null;
          },
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Address'),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your address';
            }
            return null;
          },
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'City'),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your city';
            }
            return null;
          },
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Postal Code'),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your postal code';
            }
            return null;
          },
        ),
      ],
    );
  }
}
