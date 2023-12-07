import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:selfimprovement/Models/ApiModel.dart';
import 'package:selfimprovement/Providers/Cart.dart';
import 'package:selfimprovement/Providers/Favorite.dart';
import 'package:selfimprovement/webfunctionalities.dart/ApiCalling.dart';

class StoreItem extends StatelessWidget {
  StoreItem({super.key, required this.indexdata, required this.imagesdata});
  // String brand;
  String imagesdata;
  int indexdata;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Consumer<Cart>(
        builder: (context, value, child) => GestureDetector(
          onDoubleTap: () {
            // print("yes");
            if (value.cartitems.contains(demoModel.products![indexdata]) ==
                true) {
              value.addItemtocart(indexdata);
            } else {
              value.removeItemfromcart(indexdata);
            }
          },
          child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(0)),
              clipBehavior: Clip.hardEdge,
              child: Image.network(imagesdata)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Consumer<Favorite>(
            builder: (context, data, child) => GestureDetector(
              onTap: () {
                if (data.favoriteitems
                        .contains(demoModel.products![indexdata]) ==
                    true) {
                  data.removeitem(indexdata);
                } else {
                  data.additem(indexdata);
                }
              },
              child: Icon(
                data.favoriteitems.contains(demoModel.products![indexdata]) ==
                        true
                    ? Icons.favorite
                    : Icons.favorite_border_outlined,
                color: Colors.red,
              ),
            ),
          )
        ]),
      ),
    ]);
  }
}
