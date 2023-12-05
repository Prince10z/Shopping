import 'package:flutter/material.dart';
import 'package:selfimprovement/Screens/FavoriteScreens.dart';
import 'package:selfimprovement/Widgets/Items.dart';
import 'package:selfimprovement/webfunctionalities.dart/ApiCalling.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    // TODO: implement initState
    // getdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Items"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => FavoriteItems())));
              },
              icon: Icon(Icons.favorite)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 30,
          // left: 30, right: 30
        ),
        child: FutureBuilder(
            future: getdata(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                          height: 20,
                          color: Colors.transparent,
                        ),
                    scrollDirection: Axis.vertical,
                    itemCount: snapshot.data!.products!.length,
                    itemBuilder: (context, index) {
                      return StoreItem(
                          indexdata: index,
                          imagesdata: snapshot.data!.products![index].thumbnail
                              .toString());
                    });
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(child: Text(snapshot.hasError.toString()));
              } else {
                return Container();
              }
            }),
      ),
    );
  }
}
