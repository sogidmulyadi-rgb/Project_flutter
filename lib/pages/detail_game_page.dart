import 'package:flutter/material.dart';

import '../models/game_model.dart';
import '../controllers/detail_game_controller.dart';

class DetailGamePage extends StatelessWidget {
  final GameModel game;

  const DetailGamePage({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    final DetailGameController controller = DetailGameController(game: game);

    return Scaffold(
      backgroundColor: const Color(0xFFF0F6FF),
      appBar: AppBar(
        title: Text(
          controller.game.judul,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        foregroundColor: Colors.white,
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF0D47A1), Color(0xFF1976D2), Color(0xFF42A5F5)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.1),
                blurRadius: 15,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 140,
                    width: 140,
                    color: Colors.blue.shade50,
                    child: Image.network(
                      controller.game.gambarAset,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.sports_esports,
                          size: 70,
                          color: Color(0xFF1976D2),
                        );
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              Center(
                child: Text(
                  controller.game.judul,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0D47A1),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Chip(
                    label: Text(
                      controller.game.kategori,
                      style: TextStyle(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    backgroundColor: Colors.blue.shade50,
                    side: BorderSide(color: Colors.blue.shade200),
                  ),
                  const SizedBox(width: 8),
                  Chip(
                    label: Text(
                      'Rilis: ${controller.game.tahunRilis}',
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    backgroundColor: Colors.grey.shade100,
                  ),
                ],
              ),
              const SizedBox(height: 16),

              Center(
                child: Text(
                  'Pengembang: ${controller.game.pengembang}',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
              const Divider(height: 36, thickness: 1),

              const Text(
                'Deskripsi Game',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0D47A1),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                controller.game.deskripsiSingkat,
                style: TextStyle(
                  fontSize: 15,
                  height: 1.6,
                  color: Colors.grey.shade800,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
