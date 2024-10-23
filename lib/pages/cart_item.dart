import "package:ecom/modes/cart.dart";
import "package:ecom/modes/shoe.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItem() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagepath),
        title: Text(widget.shoe.name),
        subtitle: Text('\$' + widget.shoe.price),
        trailing: IconButton(
          onPressed: removeItem,
          icon: Icon(Icons.delete),
        ),
      ),
    );
  }
}
