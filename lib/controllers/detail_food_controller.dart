import 'package:get/get.dart';

import '../models/food_model.dart';

class DetailFoodController extends GetxController {
  late FoodModel Food;

  @override
  void onInit() {
    super.onInit();
    Food = Get.arguments as FoodModel;
  }
}
