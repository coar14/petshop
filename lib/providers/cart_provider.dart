import 'package:flutter/material.dart';
import 'package:petshop/constant/list.dart';

class CartProvider extends ChangeNotifier {
  List<Pet> _cartItems = [];

  List<Pet> get cartItems => _cartItems;

  void addToCart(Pet pet) {
    if (!_cartItems.any((item) => item.id == pet.id)) {
      _cartItems.add(pet);
      notifyListeners();
    }
  }

  void removeFromCart(Pet pet) {
    _cartItems.removeWhere((item) => item.id == pet.id);
    notifyListeners();
  }

  int getCartItemCount() {
    return _cartItems.length;
  }

  double getTotalPrice() {
    return _cartItems.fold(0.0, (total, pet) => total + pet.price);
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
}
