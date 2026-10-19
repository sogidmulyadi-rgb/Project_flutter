import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajar_flutter/routes.dart';

import '../controllers/list_food_controller.dart';

class ListFoodPage extends StatelessWidget {
  const ListFoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ListFoodController controller = ListFoodController();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 65, 176, 255),
      appBar: AppBar(
        title: const Text('Daftar Menu Makanan'),
        centerTitle: true,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: controller.daftarMakanan.length,
        itemBuilder: (context, index) {
          final makanan = controller.daftarMakanan[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 8),
            child: ListTile(
              title: Text(makanan.judul),
              subtitle: Text('${makanan.harga} - ${makanan.review}'),
              onTap: () {
                Get.toNamed(Routes.detailFood, arguments: makanan);
              },
            ),
          );
        },
      ),
    );
  }
}
