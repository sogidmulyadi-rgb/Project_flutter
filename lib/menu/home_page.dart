import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajar_flutter/routes.dart';

import '../controllers/list_food_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ListFoodController();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 65, 176, 255),
      appBar: AppBar(
        title: const Text('Daftar Menu Makanan'),
        centerTitle: true,
      ),
      body: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.daftarMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.daftarMakanan[index];

            return SizedBox(
              width: 200,
              child: Card(
                margin: const EdgeInsets.only(right: 12),
                child: InkWell(
                  onTap: () {
                    Get.toNamed(Routes.detailFood, arguments: makanan);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          makanan.judul,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          makanan.harga,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          makanan.review,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
