import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajar_flutter/controllers/login_controller.dart';

void main() {
  runApp(const SpotifyApp());
}

class SpotifyApp extends StatelessWidget {
  const SpotifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify Login',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF121212),
        fontFamily: 'Helvetica',
      ),
      home: const SpotifyLoginPage(),
    );
  }
}

class SpotifyLoginPage extends StatefulWidget {
  const SpotifyLoginPage({super.key});

  @override
  State<SpotifyLoginPage> createState() => _SpotifyLoginPageState();
}

class _SpotifyLoginPageState extends State<SpotifyLoginPage> {
  final controller = Get.put(LoginController());
  bool _isPasswordVisible = false;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Spotify Logo
                Center(
                  child: Container(
                    width: 56,
                    height: 56,
                    decoration: const BoxDecoration(
                      color: Color(0xFF1ED760),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.graphic_eq,
                      color: Colors.black,
                      size: 36,
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // Title
                const Text(
                  'Log in to Spotify',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: -0.5,
                  ),
                ),
                const SizedBox(height: 32),

                // Social Login Buttons
                _buildSocialButton(
                  icon: Icons.g_mobiledata,
                  label: 'Continue with Google',
                  iconSize: 28,
                ),
                const SizedBox(height: 12),
                _buildSocialButton(
                  icon: Icons.facebook,
                  label: 'Continue with Facebook',
                  iconColor: const Color(0xFF1877F2),
                ),
                const SizedBox(height: 12),
                _buildSocialButton(
                  icon: Icons.apple,
                  label: 'Continue with Apple',
                ),
                const SizedBox(height: 24),

                // Divider
                const Row(
                  children: [
                    Expanded(
                      child: Divider(color: Color(0xFF404040), thickness: 1),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'or',
                        style: TextStyle(
                          color: Color(0xFFA7A7A7),
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(color: Color(0xFF404040), thickness: 1),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // Email / Username Input
                const Text(
                  'Email or username',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: controller.txtUsername,
                  style: const TextStyle(color: Colors.white),
                  cursorColor: const Color(0xFF1ED760),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFF282828),
                    hintText: 'Email or username',
                    hintStyle: const TextStyle(
                      color: Color(0xFF727272),
                      fontSize: 14,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 1.5,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Password Input
                const Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: controller.txtPassword,
                  obscureText: !_isPasswordVisible,
                  style: const TextStyle(color: Colors.white),
                  cursorColor: const Color(0xFF1ED760),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFF282828),
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      color: Color(0xFF727272),
                      fontSize: 14,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 1.5,
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: const Color(0xFFA7A7A7),
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Remember Me Switch
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Remember me',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Switch(
                      value: _rememberMe,
                      activeThumbColor: const Color(0xFF1ED760),
                      activeTrackColor: const Color(
                        0xFF1ED760,
                      ).withValues(alpha: 0.5),
                      inactiveThumbColor: Colors.white,
                      inactiveTrackColor: const Color(0xFF404040),
                      onChanged: (val) {
                        setState(() {
                          _rememberMe = val;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // Log In Button with GetX Obx
                Obx(
                  () => controller.isLoading.value
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: Color(0xFF1ED760),
                          ),
                        )
                      : ElevatedButton(
                          onPressed: () {
                            controller.login();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1ED760),
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            elevation: 0,
                          ),
                          child: const Text(
                            'Log In',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                ),
                const SizedBox(height: 20),

                // Log In Without Password
                Center(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color(0xFF727272)),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Log in without password',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 28),

                // Sign Up Footer
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account? ",
                      style: TextStyle(color: Color(0xFFA7A7A7), fontSize: 14),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton({
    required IconData icon,
    required String label,
    Color? iconColor,
    double iconSize = 22,
  }) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Color(0xFF727272)),
        padding: const EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Icon(
                icon,
                color: iconColor ?? Colors.white,
                size: iconSize,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}