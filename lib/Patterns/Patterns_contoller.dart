import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Patternscontollre extends GetxController {
  TextEditingController chacekpattern = TextEditingController();
  RxString patternResult = ''.obs;
  void pattern1(int number) {
    patternResult.value = '';
    for (int i = 1; i <= number; i++) {
      for (int j = 1; j <= i; j++) {
        patternResult.value += j.toString();
      }
      patternResult.value += '\n';
    }
  }

  void pattern2(int number) {
    patternResult.value = '';
    for (int i = number; i >= 1; i--) {
      for (int j = 1; j <= i; j++) {
        patternResult.value += j.toString();
      }
      patternResult.value += '\n';
    }
  }

  void pattern3(int number) {
    patternResult.value = '';
    for (int i = 1; i <= number; i++) {
      for (int j = number; j >= i; j--) {
        patternResult.value += j.toString();
      }
      patternResult.value += '\n';
    }
  }

  void pattern4(int number) {
    patternResult.value = '';
    for (int i = 1; i <= number; i++) {
      for (int j = i; j >= 1; j--) {
        patternResult.value += j.toString();
      }
      patternResult.value += '\n';
    }
  }

  void pattern5(int number) {
    patternResult.value = '';
    for (int i = 1; i <= number; i++) {
      for (int j = 5; j >= i; j--) {
        patternResult.value += j.toString();
      }
      patternResult.value += '\n';
    }
  }

  void pattern6(int number) {
    patternResult.value = '';
    for (int i = number; i >= 1; i--) {
      for (int j = i; j >= 1; j--) {
        patternResult.value += j.toString();
      }
      patternResult.value += '\n';
    }
  }

  void pattern7(int number) {
    patternResult.value = '';
    for (int i = 1; i <= number; i++) {
      for (int j = i; j <= number; j++) {
        patternResult.value += j.toString();
      }
      patternResult.value += '\n';
    }
  }

  void pattern8(int number) {
    patternResult.value = '';
    for (int i = 1; i <= number; i++) {
      for (int j = number; j >= i; j--) {
        patternResult.value += j.toString();
      }
      patternResult.value += '\n';
    }
  }

  void pattern9(int number) {
    patternResult.value = '';
    for (int i = 1; i <= number; i++) {
      for (int j = 1; j <= i; j++) {
        patternResult.value += i.toString();
      }
      patternResult.value += '\n';
    }
  }

  void pattern10(int number) {
    patternResult.value = '';
    for (int i = 1; i <= number; i++) {
      for (int j = 1; j <= i; j++) {
        patternResult.value += (number - i + 1).toString();
      }

      patternResult.value += '\n';
    }
  }

  void pattern11(int number) {
    patternResult.value = '';
    for (int i = number; i >= 1; i--) {
      for (int j = 1; j <= number; j++) {
        patternResult.value += i.toString();
      }
      patternResult.value += '\n';
    }
  }

  void pattern12(int number) {}
  void pattern13(int number) {}
  void pattern14(int number) {}
  void pattern15(int number) {}
  void pattern16(int number) {}
  void pattern17(int number) {}
  void pattern18(int number) {}
  void pattern19(int number) {}
  void pattern20(int number) {}
  void pattern21(int number) {}
  void pattern22(int number) {}
  void pattern23(int number) {}
  void pattern24(int number) {}
  void pattern25(int number) {
    patternResult.value = '';
    for (int i = number; i >= 1; i--) {
      for (int j = 1; j <= i; j++) {
        patternResult.value += i.toString();
      }
      patternResult.value += '\n';
    }
  }
}
