import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajar_flutter/controllers/Confirm_registration_Controler.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  ConfirmRegistrationPage({super.key});

  final controller = Get.put(ConfirmRegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Confirm Page"), backgroundColor: const Color.fromARGB(255, 50, 163, 255)),
      body: Container(
        color: const Color.fromARGB(255, 50, 146, 249),
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Card(
          color: const Color.fromARGB(255, 255, 255, 255),
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Konfirmasi Registrasi",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Text(
                  "Username: ${controller.username}",
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                Text(
                  "Nama lengkap: ${controller.nama_lengkap}",
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                Text(
                  "Email: ${controller.email}",
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                Text(
                  "No WA: ${controller.no_wa}",
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                Text(
                  "Jenis kelamin: ${controller.jenis_kelamin}",
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                Text(
                  "Agama: ${controller.agama}",
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: Get.back,
                    child: const Text("OK"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
