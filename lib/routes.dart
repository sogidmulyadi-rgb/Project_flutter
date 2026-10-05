import 'package:belajar_flutter/pages/Confirm_registration_page.dart';
import 'package:belajar_flutter/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = '/registration';
  static const String confirm_registration = '/confirm_registration';
  // dll

  // kita masukkan kedalam mypages array
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => ConfirmRegistrationPage()),
    // dll
  ];
}