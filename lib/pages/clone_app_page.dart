import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajar_flutter/controllers/login_controller.dart';

void main() {
  runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: FacebookLoginPage(),
    ),
  );
}

class FacebookApp extends StatelessWidget {
  const FacebookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const FacebookLoginPage();
  }
}

class FacebookLoginPage extends StatefulWidget {
  const FacebookLoginPage({super.key});

  @override
  State<FacebookLoginPage> createState() => _FacebookLoginPageState();
}

class _FacebookLoginPageState extends State<FacebookLoginPage> {
  final controller = Get.put(LoginController());
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    const facebookBlue = Color(0xFF1877F2);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),

                // Language Option at Top
                Center(
                  child: Text(
                    'Bahasa Indonesia • English • Lainnya...',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(height: 40),

                // Facebook Logo
                const Center(
                  child: Icon(
                    Icons.facebook,
                    size: 80,
                    color: facebookBlue,
                  ),
                ),
                const SizedBox(height: 40),

                // Username / Email input (menggunakan controller dari LoginController)
                TextField(
                  controller: controller.txtUsername,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Nomor ponsel atau email',
                    hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 15),
                    filled: true,
                    fillColor: const Color(0xFFF5F6F8),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: facebookBlue, width: 1.5),
                    ),
                  ),
                ),
                const SizedBox(height: 14),

                // Password input (menggunakan controller dari LoginController)
                TextField(
                  controller: controller.txtPassword,
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    hintText: 'Kata Sandi',
                    hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 15),
                    filled: true,
                    fillColor: const Color(0xFFF5F6F8),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: facebookBlue, width: 1.5),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey.shade600,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 18),

                // Tombol Login dengan Obx & Loading state dari LoginController
                Obx(
                  () => controller.isLoading.value
                      ? const Center(
                          child: CircularProgressIndicator(color: facebookBlue),
                        )
                      : ElevatedButton(
                          onPressed: () {
                            controller.login();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: facebookBlue,
                            foregroundColor: Colors.white,
                            elevation: 0,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
