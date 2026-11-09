import 'package:belajar_flutter/components/mytextfield.dart';
import 'package:belajar_flutter/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Scaffold(
      appBar: AppBar(title: const Text("login page")),
      body: Column(
        children: [
          const Text(
            "Welcome to application",
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 46, 9, 182),
              fontWeight: FontWeight.bold,
            ),
          ),

          Container(
            margin: const EdgeInsets.all(10),
            child: Mytextfield(
              myHint: "input username",
              txtController: controller.txtUsername,
            ),
          ),

          Container(
            margin: const EdgeInsets.all(10),
            child: Mytextfield(
              myHint: "input password",
              txtController: controller.txtPassword,
            ),
          ),

          Obx(
            () => controller.isLoading.value
                ? const Center(child: CircularProgressIndicator())
                : ElevatedButton(
                    onPressed: () {
                      controller.login();
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 30, 175, 44),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
          ),
          
        ],
      ),
    );
  }
}