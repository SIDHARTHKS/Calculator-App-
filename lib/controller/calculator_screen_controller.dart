import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorScreenController extends GetxController {
  var display = "".obs;
  void clear() {
    display.value = '';
    debugPrint(display.value);
  }

  void append(String value) {
    display.value += value;
  }

  calculate() {
    try {
      var result = _evaluate(display.value);
      display('$result');
    } catch (e) {
      display.value = "error";
    }
    return null;
  }

  double _evaluate(String expression) {
    expression = expression.replaceAll(' ', '');
    if (expression.isEmpty) return 0.0;
    List<String> tokens = expression.split(RegExp(r'(?<=[-+*/])|(?=[-+*/])'));
    List<dynamic> parsedTokens = [];
    for (var token in tokens) {
      if (RegExp(r'^\d+(\.\d+)?$').hasMatch(token)) {
        parsedTokens.add(double.parse(token));
      } else {
        parsedTokens.add(token);
      }
    }
    double result = parsedTokens[0];
    for (int i = 1; i < parsedTokens.length; i += 2) {
      String operator = parsedTokens[i];
      double nextValue = parsedTokens[i + 1];
      switch (operator) {
        case "+":
          result += nextValue;
          break;
        case "-":
          result -= nextValue;
          break;
        case "x":
          result *= nextValue;
          break;
        case "/":
          if (nextValue != 0) {
            result /= nextValue;
          } else {
            throw Exception("division by zero");
          }
          break;
        default:
          throw Exception('invalid operator');
      }
    }
    return result;
  }
}
