import 'package:calculator_app/controller/calculator_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget calcbutton(String buttontxt, Color buttonclr) {
  final CalculatorScreenController controller =
      Get.find<CalculatorScreenController>();

  // ignore: sized_box_for_whitespace
  return Container(
    width: buttontxt == '0' ? Get.width * 0.38 : Get.width * 0.16,
    height: Get.height * 0.14,
    child: ElevatedButton(
      onPressed: () {
        if (buttontxt == 'AC') {
          controller.clear();
        } else if (buttontxt == '=') {
          controller.calculate();
        } else {
          controller.append(buttontxt);
        }
        debugPrint(controller.display.value);
      },
      style:
          ElevatedButton.styleFrom(backgroundColor: buttonclr, elevation: 20),
      child: Center(
        child: Text(
          buttontxt,
          style: const TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    ),
  );
}
