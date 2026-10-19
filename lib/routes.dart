import 'package:belajar_flutter/pages/confirm_registration_page.dart';
import 'package:belajar_flutter/pages/registration_page.dart';
import 'package:belajar_flutter/pages/list_food_page.dart';
import 'package:belajar_flutter/pages/detail_food_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String listFood = '/list_food';
  static const String detailFood = '/detail_food';
  static const String registration = '/registration';
  static const String confirmRegistration = '/confirm_registration';

  static final myPages = [
    GetPage(name: listFood, page: () => ListFoodPage()),
    GetPage(name: detailFood, page: () => DetailFoodPage()),
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
  ];
}
