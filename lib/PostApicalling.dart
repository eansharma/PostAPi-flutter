import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'RestrorentModels.dart';
import 'controler/ControllerPost.dart';

class RestaurantPage extends StatelessWidget {
  final HomeController restaurantController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Obx(() => restaurantController.list.length == 0
          ? CircularProgressIndicator()
          : ListView.builder(
        itemCount: restaurantController.list.length,
        itemBuilder: (context, index) {
          return Card(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Id: "'${restaurantController.list[index].restaurant?[0].id}'),
                Text("Name : "'${restaurantController.list[index].restaurant?[0].name}'),
                Text("RestaurantModel : "'${restaurantController.list[index].restaurant?[0].restaurantModel}'),
                Text("Address : "'${restaurantController.list[index].restaurant?[0].address}'),
                Text("Status : "'${restaurantController.list[index].restaurant?[0].status}'),
                Text("Comission :"'${restaurantController.list[index].restaurant?[0].comission}'),
                Text("Active : "'${restaurantController.list[index].restaurant?[0].active}'),
                Text("Veg : "'${restaurantController.list[index].restaurant?[0].veg}'),
                Text("nonVeg : "'${restaurantController.list[index].restaurant?[0].nonVeg}'),
                Text("Discount : "'${restaurantController.list[index].restaurant?[0].discount}'),
                Text("Email : "'${restaurantController.list[index].restaurant?[0].email}'),

              ],
            ),
          );
        },
      )),
    );
  }
}
