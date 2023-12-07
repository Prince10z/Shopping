import 'package:flutter/material.dart';
import 'package:selfimprovement/functions/Navigationfunctions.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              popscreens(context);
            },
            child: Icon(Icons.arrow_back)),
        title: Text("Cart"),
        centerTitle: true,
      ),
    );
  }
}
