import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'PostApicalling.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:RestaurantPage() ,
    ) ;
  }
}
