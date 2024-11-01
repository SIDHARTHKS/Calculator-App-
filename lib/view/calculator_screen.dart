import 'package:calculator_app/controller/calculator_screen_controller.dart';
import 'package:calculator_app/view/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorScreen extends StatelessWidget {
  final CalculatorScreenController controller =
      Get.put(CalculatorScreenController());
  CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              Obx(
                () => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      controller.display.value,
                      style: const TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 252, 252),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton("AC", const Color.fromARGB(255, 24, 24, 24)),
                  calcbutton('+/-', const Color.fromARGB(255, 24, 24, 24)),
                  calcbutton('%', const Color.fromARGB(255, 24, 24, 24)),
                  calcbutton('/', Colors.orange),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton('7', const Color.fromARGB(255, 92, 92, 92)),
                  calcbutton('8', const Color.fromARGB(255, 92, 92, 92)),
                  calcbutton('9', const Color.fromARGB(255, 92, 92, 92)),
                  calcbutton('x', Colors.orange),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton('4', const Color.fromARGB(255, 92, 92, 92)),
                  calcbutton('5', const Color.fromARGB(255, 92, 92, 92)),
                  calcbutton('6', const Color.fromARGB(255, 92, 92, 92)),
                  calcbutton('-', Colors.orange),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton('1', const Color.fromARGB(255, 92, 92, 92)),
                  calcbutton('2', const Color.fromARGB(255, 92, 92, 92)),
                  calcbutton('3', const Color.fromARGB(255, 92, 92, 92)),
                  calcbutton('+', Colors.orange),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton('0', const Color.fromARGB(255, 92, 92, 92)),
                  calcbutton('.', const Color.fromARGB(255, 92, 92, 92)),
                  calcbutton('=', Colors.orange),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          )),
        ),
      ),
    );
  }
}
