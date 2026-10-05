import 'package:belajar_flutter/Components/Mytextfield.dart';
import 'package:belajar_flutter/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtUsername = TextEditingController();
    TextEditingController txtNamaLengkap = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController noWA = TextEditingController();
    String? jenisKelamin;
    String? agama;

    return Scaffold(
      appBar: AppBar(title: const Text("Registration"), backgroundColor: const Color.fromARGB(255, 50, 163, 255)),
      body: Container(
        color: const Color.fromARGB(255, 50, 146, 249),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Card(
            color: const Color.fromARGB(255, 255, 255, 255),
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Form Registrasi",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Mytextfield(
                    myHint: "input username",
                    txtController: txtUsername,
                  ),
                  const SizedBox(height: 12),
                  Mytextfield(
                    myHint: "input nama lengkap",
                    txtController: txtNamaLengkap,
                  ),
                  const SizedBox(height: 12),
                  Mytextfield(
                    myHint: "input email",
                    txtController: txtEmail,
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: noWA,
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    decoration: const InputDecoration(
                      hintText: "input no WA",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      labelText: "Jenis kelamin",
                      border: OutlineInputBorder(),
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: "Laki-laki",
                        child: Text("Laki-laki"),
                      ),
                      DropdownMenuItem(
                        value: "Perempuan",
                        child: Text("Perempuan"),
                      ),
                    ],
                    onChanged: (value) => jenisKelamin = value,
                  ),
                  const SizedBox(height: 12),
                  DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      labelText: "Agama",
                      border: OutlineInputBorder(),
                    ),
                    items: const [
                      DropdownMenuItem(value: "Islam", child: Text("Islam")),
                      DropdownMenuItem(
                        value: "Kristen",
                        child: Text("Kristen"),
                      ),
                      DropdownMenuItem(
                        value: "Katolik",
                        child: Text("Katolik"),
                      ),
                      DropdownMenuItem(value: "Hindu", child: Text("Hindu")),
                      DropdownMenuItem(value: "Buddha", child: Text("Buddha")),
                      DropdownMenuItem(
                        value: "Konghucu",
                        child: Text("Konghucu"),
                      ),
                    ],
                    onChanged: (value) => agama = value,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed(
                        Routes.confirm_registration,
                        arguments: {
                          "username": txtUsername.text,
                          "nama_lengkap": txtNamaLengkap.text,
                          "email": txtEmail.text,
                          "no_wa": noWA.text,
                          "jenis_kelamin": jenisKelamin,
                          "agama": agama,
                        },
                      );
                    },
                    child: const Text("Send"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}