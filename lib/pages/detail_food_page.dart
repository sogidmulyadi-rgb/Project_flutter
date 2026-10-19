import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/detail_food_controller.dart';

class DetailFoodPage extends StatelessWidget {
  DetailFoodPage({super.key});

  final DetailFoodController controller = Get.put(DetailFoodController());

  @override
  Widget build(BuildContext context) {
    final food = controller.Food;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 65, 176, 255),
      appBar: AppBar(title: Text(food.judul)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          // kiri
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              food.gambar,
              width: double.infinity,
              errorBuilder: (context, error, stackTrace) {
                return const Center(child: Text('Gambar tidak tersedia'));
              },
            ),

            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(food.judul),
                ),
              ),
            ),

            SizedBox(
              width: double.infinity,
              child: Card(
                color: Colors.green.shade50,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text('Harga: ${food.harga}'),
                ),
              ),
            ),

            SizedBox(
              width: double.infinity,
              child: Card(
                color: Colors.amber.shade50,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text('Rating pelanggan: ${food.review}'),
                ),
              ),
            ),

            SizedBox(
              width: double.infinity,
              child: Card(
                color: const Color.fromARGB(255, 187, 187, 187),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Deskripsi Makanan: '),
                      const SizedBox(height: 8),
                      Text(food.deskripsiSingkat),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
