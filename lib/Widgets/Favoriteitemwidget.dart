import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:selfimprovement/Models/ApiModel.dart';
import 'package:selfimprovement/Providers/Favorite.dart';
import 'package:selfimprovement/webfunctionalities.dart/ApiCalling.dart';

class favoriteStoreItem extends StatelessWidget {
  favoriteStoreItem({super.key, required this.index, required this.imagesdata});
  // String brand;
  int index;
  String imagesdata;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(0)),
          clipBehavior: Clip.hardEdge,
          child: Image.network(imagesdata)),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Consumer<Favorite>(
            builder: (context, data, child) => GestureDetector(
              onTap: () {
                data.removeitem(index);
              },
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
          )
        ]),
      ),
    ]);
  }
}
