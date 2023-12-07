import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:selfimprovement/Providers/Favorite.dart';
import 'package:selfimprovement/Widgets/Favoriteitemwidget.dart';
import 'package:selfimprovement/Widgets/Items.dart';
import 'package:selfimprovement/functions/Navigationfunctions.dart';

class FavoriteItems extends StatelessWidget {
  const FavoriteItems({super.key});

  @override
  Widget build(BuildContext context) {
    Favorite favorite = Provider.of<Favorite>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              popscreens(context);
            },
            child: Icon(Icons.arrow_back)),
        title: Text("Favorite Items"),
        centerTitle: true,
      ),
      body: Consumer<Favorite>(
          builder: (context, value, child) => ListView.builder(
              itemCount: value.favoriteitems.length,
              itemBuilder: (context, index) {
                return favoriteStoreItem(
                  imagesdata: value.favoriteitems[index].thumbnail,
                  // index: index,
                );
              })),
    );
  }
}
