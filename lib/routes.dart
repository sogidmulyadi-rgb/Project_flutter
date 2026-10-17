import 'package:belajar_flutter/pages/confirm_registration_page.dart';
import 'package:belajar_flutter/pages/registration_page.dart';
import 'package:belajar_flutter/pages/list_game_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String listGame = '/list_game';
  static const String registration = '/registration';
  static const String confirmRegistration = '/confirm_registration';

  // Masukkan kedalam myPages array menggunakan GetX
  static final myPages = [
    GetPage(name: listGame, page: () => ListGamePage()),
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
  ];
}
