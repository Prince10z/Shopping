import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:selfimprovement/Providers/Cart.dart';
import 'package:selfimprovement/Providers/Favorite.dart';
import 'package:selfimprovement/Screens/Homescreen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => Favorite(),
      ),
      ChangeNotifierProvider(
        create: (context) => Cart(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Homepage());
  }
}
