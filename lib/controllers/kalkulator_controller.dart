import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  var hasilHitung = 0.0.obs; // obs digunakan untuk update ke UI page
  // method tambah kurang kali dan bagi
  void tambah(double angka1, double angka2) {
    double hasiltambah = angka1 + angka2;
    hasilHitung.value = hasiltambah;
    // snackbar
    Get.snackbar(
      "hasil tambah",
      "hasil nya $hasiltambah",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kurang(double angka1, double angka2) {
    double hasilkurang = angka1 - angka2;
    hasilHitung.value = hasilkurang;
    // snackbar
    Get.snackbar(
      "hasil kurang",
      "hasil nya $hasilkurang",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void bagi(double angka1, double angka2) {
    if (angka2 == 0) {
      Get.snackbar(
        "Peringatan",
        "Angka pembagi tidak boleh 0",
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    double hasilbagi = angka1 / angka2;
    hasilHitung.value = hasilbagi;
    // snackbar
    Get.snackbar(
      "hasil bagi",
      "hasil nya $hasilbagi",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kali(double angka1, double angka2) {
    double hasilkali = angka1 * angka2;
    hasilHitung.value = hasilkali;
    // snackbar
    Get.snackbar(
      "hasil kali",
      "hasil nya $hasilkali",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}