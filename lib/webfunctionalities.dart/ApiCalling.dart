import "dart:convert";

import "package:http/http.dart" as http;
import "package:selfimprovement/Models/ApiModel.dart";

// DemoModel demomodel = DemoModel();
DemoModel demoModel = DemoModel();
Future<DemoModel> getdata() async {
  try {
    Uri url = Uri.parse("https://dummyjson.com/products");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final test = jsonDecode(response.body);
      // demomodel = DemoModel.fromJson(test);
      // print(demomodel.products?[1].images);
      demoModel = DemoModel.fromJson(test);
      return demoModel;
    } else {
      print("Could not load");
      return DemoModel();
    }
  } catch (e) {
    print("Error is:$e");
    return DemoModel();
  }
}
