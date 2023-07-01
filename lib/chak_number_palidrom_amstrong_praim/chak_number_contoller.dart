import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NumberController extends GetxController {
  TextEditingController checknumber = TextEditingController();
  RxString resultpalindrom = ''.obs;
  RxString resultamstrong = ''.obs;
  RxString resultprinme = ''.obs;

  void palindrom(int number) {
    RxInt rem = 0.obs, sum = 0.obs, temp = 0.obs;
    temp.value = number;
    while (number > 0) {
      rem.value = number % 10;
      sum.value = sum.value % 10 + rem.value;
      number = number ~/ 10;
    }
    if (temp == sum) {
      resultpalindrom.value = 'palindrom';
    } else {
      resultpalindrom.value = ' not palindrom';
    }
  }

  void amstrong(int number) {
    RxInt sum = 0.obs, reminder = 0.obs;
    RxInt temp = number.obs;
    temp.value = number;
    while (number != 0) {
      reminder.value = number % 10;
      sum.value = sum.value + reminder.value * reminder.value * reminder.value;
      number = number ~/ 10;
    }

    if (sum == temp) {
      resultamstrong.value = 'amstrong';
    } else {
      resultamstrong.value = ' not amstrong';
    }
  }

  void prime(
    int a,
  ) {
    RxInt c = 0.obs;
    for (int i = 2; i < a; i++) {
      if (a % i == 0) {
        c++;
      }
    }
    if (c == 0) {
      resultprinme.value = 'is prime';
    } else {
      resultprinme.value = ' not prim number';
    }
  }
}
