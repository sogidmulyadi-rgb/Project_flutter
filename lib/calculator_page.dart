import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculatorPage extends StatefulWidget {
  const new({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
  
  
}

class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController angka1Controller = TextEditingController();
  final TextEditingController angka2Controller = TextEditingController();
  final TextEditingController hasilController = TextEditingController();
  
  void hitung (String operator){
    double angka1 = double.parse(angka1Controller.text);
    double angka2 = double.parse(angka2Controller.text);
    double hasil = 0;

    if (operator == "+"){
      hasil = angka1 + angka2;
    } else if (operator == "-"){
      hasil = angka1 - angka2;
    } else if (operator == "x"){
      hasil = angka1 * angka2;
    } else if (operator == ":"){
      hasil = angka1 / angka2;
    }

    setState(() {
      hasilController.text = hasil.toString();
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator")
      ),
      body: 
      Column(
        children: [
          Container(
            width: 300,
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: angka1Controller,
              decoration: InputDecoration(hintText: "Angka 1"),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
          Container(
            width: 300,
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: angka2Controller,
              decoration: InputDecoration(hintText: "Angka 2"),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(onPressed: (){
                      hitung("+");

                    }, child: Text("+"))),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(onPressed: (){
                      hitung("-");

                    }, child: Text("-"))),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(onPressed: (){
                      hitung("x");

                    }, child: Text("x"))),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(onPressed: (){
                      hitung(":");

                    }, child: Text(":"))),
                  
              ],
            )
          ),

          Container(
            child: Text("Hasil : ${hasilController.text}", 
            style: TextStyle(fontSize: 20),),
            margin: EdgeInsets.all(20),
          ),
        ],
      ),      
    );
  }
}