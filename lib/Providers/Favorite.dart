import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:selfimprovement/Models/ApiModel.dart';
import 'package:selfimprovement/webfunctionalities.dart/ApiCalling.dart';

class Favorite extends ChangeNotifier {
  List<dynamic> _favoriteitems = [];
  List<dynamic> get favoriteitems => _favoriteitems;
  void additem(int index) {
    _favoriteitems.add(demoModel.products![index]);
    notifyListeners();
  }

  void removeitem(int index) {
    _favoriteitems.remove(demoModel.products![index]);
    print("Removed data:$index");
    notifyListeners();
  }
}
