import 'package:flutter/foundation.dart';
import 'package:selfimprovement/Models/ApiModel.dart';
import 'package:selfimprovement/webfunctionalities.dart/ApiCalling.dart';

class Cart extends ChangeNotifier {
  List<Products> _cartitems = [];
  List<Products> get cartitems => _cartitems;
  void addItemtocart(int index) {
    _cartitems.add(demoModel.products![index]);
    print(_cartitems.length);
    notifyListeners();
  }

  void removeItemfromcart(int index) {
    _cartitems.remove(demoModel.products![index]);

    print(_cartitems.length);
    notifyListeners();
  }
}
