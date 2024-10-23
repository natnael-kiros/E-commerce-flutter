// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ecom/modes/cart.dart';
import 'package:ecom/modes/shoe.dart';
import 'package:ecom/pages/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  Function()? removeItem(Shoe shoe) {
    Provider.of<Cart>(context).removeItemFromCart(shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'My Cart',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: value.getUserCart().length,
                      itemBuilder: (context, index) {
                        Shoe shoe = value.getShoeList()[index];
                        return CartItem(
                          shoe: shoe,
                        );
                      }),
                )
              ],
            ));
  }
}
