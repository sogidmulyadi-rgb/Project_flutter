import 'package:flutter/material.dart';
import 'package:belajar_flutter/menu/home_page.dart';
import 'package:belajar_flutter/menu/history_page.dart';
import 'package:belajar_flutter/menu/profile_page.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [HomePage(), HistoryPage(), ProfilePage()];
}