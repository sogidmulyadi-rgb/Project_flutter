import 'package:belajar_flutter/pages/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'login_model_controller.dart';

class LoginController extends GetxController {
  final txtUsername = TextEditingController();
  final txtPassword = TextEditingController();
  var isLoading = false.obs;
  var loginModel = Rxn<LoginModel>();


  void login() async {
    if (txtUsername.text.toString().isEmpty || txtPassword.text.toString().isEmpty) {
      Get.snackbar('Error', 'Username dan password harus terisi');
    } else {
      try {
        isLoading.value = true; // sebagai tanda di page nya muncul loading widget
        final url = Uri.parse('https://mediadwi.com/api/latihan/login');
        // (https://www.themealdb.com/api/json/v1/1/filter.php?c=Seafood) ini untuk pertemuan selanjutnya

        final response = await http.post(url, body: {
            'username': txtUsername.text.toString(),
            'password': txtPassword.text.toString(),
          },
        );

        isLoading.value = false;

        if (response.statusCode == 200) {
          // kita ambil jsonnya message pindah tampilan ke main menu
          // contoh json yang paling sederhana, next pertemuan jsonnya compleks
          loginModel.value = loginModelFromJson(response.body);
          // final data = jsonDecode(response.body);
          
          if (loginModel.value?.status == true) {
            Get.snackbar('Login Berhasil', loginModel.value?.message ?? 'Login berhasil');
            Get.off(() => MainMenu()); // ke main menu
          } else {
            Get.snackbar('Login Gagal', loginModel.value?.message ?? 'Login gagal');
          }

        } else {
          Get.snackbar('Login Gagal', 'Cek koneksi internet');
        }

      } catch (e) {
        isLoading.value = false;
        Get.snackbar('Login Gagal', e.toString());
      }
    }
  }
}