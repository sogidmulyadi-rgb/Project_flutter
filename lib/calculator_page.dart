import 'package:belajar_flutter/controllers/kalkulator_controller.dart';
import 'package:belajar_flutter/Components/mybutton.dart';
import 'package:belajar_flutter/Components/mytextfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final controller = Get.put(KalkulatorController());
  // menyambingkan page dan controller

  @override
  Widget build(BuildContext context) {
    TextEditingController txtangka1 = TextEditingController();
    TextEditingController txtangka2 = TextEditingController();

    void menghitung(void Function(double, double) operasi) {
      if (txtangka1.text.trim().isEmpty || txtangka2.text.trim().isEmpty) {
        Get.snackbar(
          "Peringatan",
          "Angka 1 dan angka 2 harus diisi",
          snackPosition: SnackPosition.BOTTOM,
        );
        return;
      }

      operasi(double.parse(txtangka1.text), double.parse(txtangka2.text));
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF2F4F7),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Kalkulator ku",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Mytextfield(
                myHint: "Input angka 1",
                txtController: txtangka1,
                hintColor: Colors.grey,
                margin: const EdgeInsets.only(bottom: 14),
              ),
              Mytextfield(
                myHint: "Input angka 2",
                txtController: txtangka2,
                hintColor: Colors.grey,
                margin: const EdgeInsets.only(bottom: 20),
              ),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                children: [
                  Mybutton(
                    text: "Tambah",
                    onPressed: () => menghitung(controller.tambah),
                  ),
                  Mybutton(
                    text: "Kurang",
                    onPressed: () => menghitung(controller.kurang),
                  ),
                  Mybutton(
                    text: "Kali",
                    onPressed: () => menghitung(controller.kali),
                  ),
                  Mybutton(
                    text: "Bagi",
                    onPressed: () => menghitung(controller.bagi),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFF152B45)),
                ),
                child: Obx(
                  () => Text(
                    "Hasil: ${controller.hasilHitung.value}",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
