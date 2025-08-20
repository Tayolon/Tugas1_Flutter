import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:latihan_11pplg2/controllers/calculator_controller.dart';
import 'package:latihan_11pplg2/customitem/custominput.dart';
import 'package:latihan_11pplg2/customitem/customtext.dart';
import 'package:latihan_11pplg2/routes/route.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final CalculatorController calculatorController = Get.put(
    CalculatorController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Customtext(
              label: "Input angka 1",
              color: Colors.green,
              pass: false,
              controller: calculatorController.txtAngka1,
              isNumber: true,
            ),
            SizedBox(height: 10),
            Customtext(
              label: "Input angka 2",
              color: Colors.green,
              pass: false,
              controller: calculatorController.txtAngka2,
              isNumber: true,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomInput(
                  label: "+",
                  color: Colors.blue,
                  onPressed: () {
                    calculatorController.tambah();
                  },
                ),
                CustomInput(
                  label: "-",
                  color: Colors.red,
                  onPressed: () {
                    calculatorController.kurang();
                  },
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomInput(
                  label: "x",
                  color: Colors.blue,
                  onPressed: () {
                    calculatorController.kali();
                  },
                ),
                CustomInput(
                  label: "/",
                  color: Colors.red,
                  onPressed: () {
                    calculatorController.bagi();
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Obx(() {
              return Text(
                "Hasil: ${calculatorController.textHasil.value}",
                style: TextStyle(fontSize: 20),
              );
            }),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                calculatorController.txtAngka1.clear();
                calculatorController.txtAngka2.clear();
                calculatorController.textHasil.value = "";
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                minimumSize: Size(120, 45),
              ),
              child: Text("Clear"),
            ),  
          ],
        ),
      ),
    );
  }
}
