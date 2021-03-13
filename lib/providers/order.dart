import 'package:flutter/cupertino.dart';
import 'package:online_shop/providers/cart.dart';

class OrderItem {
  final String id;
  final double amount;
  final List<CartItem> products;
  final DateTime dateTime;

  OrderItem({this.id, this.amount, this.products, this.dateTime});
}

class Order with ChangeNotifier {

  List<OrderItem> _orders = [];

  List<OrderItem> get orders {
    return [..._orders];
  }

  void addOrder(List<CartItem> cartProducts, double total) {
    _orders.insert(0, OrderItem(
       id: DateTime.now().microsecond.toString(),
      amount: total,
      dateTime: DateTime.now(),
      products: cartProducts
    ));
    notifyListeners();
  }

}
