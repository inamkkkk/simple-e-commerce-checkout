import 'package:flutter/foundation.dart';

class CartModel extends ChangeNotifier {
  double _total = 100.0; // Example total amount

  double get total => _total;

  void updateTotal(double newTotal) {
    _total = newTotal;
    notifyListeners();
  }
}
