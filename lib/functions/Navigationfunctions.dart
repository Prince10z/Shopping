import 'package:flutter/material.dart';
import 'package:selfimprovement/Screens/CartScreen.dart';
import 'package:selfimprovement/Screens/FavoriteScreens.dart';

void navigatetocart(context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => CartScreen()));
}

void navigatofavorite(context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => FavoriteItems()));
}

void popscreens(context) {
  Navigator.pop(context);
}
