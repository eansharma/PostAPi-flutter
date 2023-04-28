import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../RestrorentModels.dart';

class HomeController extends GetxController {
  var list = <Restaurants>[].obs;
  @override
  void onInit() {
    super.onInit();
    fechData();
  }

  Future<List<Restaurants>> fechData() async {
    final response = await http.post(
        Uri.parse(
            'https://april.tapzu.in/api/v1/getrestaurantwisecoupon?zone_id=2'),
        body: {
          'zone_id': '2',
        });
    if (response.statusCode == 200) {
      List<dynamic> temp = [];
      temp = jsonDecode(response.body)["restaurants"];
      if (temp.isNotEmpty) {
        for (int i = 0; i < temp.length; i++) {
          if (temp[i] != null) {
            print(temp[i]);
          }
          Map<String, dynamic> map = temp[i];
          list.add(
            Restaurants.fromJson(map),
          );
          update();
        }
      }
    }
    update();
    return list;
  }
}




