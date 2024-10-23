import 'package:ecom/modes/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: "Nike Dunk Low",
      price: "250",
      imagepath: "lib/imgs/nike1.png",
      description: "Men's Nike Dunk low",
    ),
    Shoe(
      name: "Nike Dunk Panda",
      price: "150",
      imagepath: "lib/imgs/nike3.png",
      description: "Limited Edition Sneaker",
    ),
    Shoe(
      name: "Nike Air Force 1",
      price: "190",
      imagepath: "lib/imgs/nike4.png",
      description: "Men's High White Air Force 1",
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getUserCart() {
    return userCart;
  }

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

  void addItemtoCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }
}
