import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomepageController extends GetxController {
  RxInt counter = 0.obs;
  RxInt countera = 0.obs;
}

class RadioCheckBoxController extends GetxController {
  TextEditingController firstrName = TextEditingController();
  TextEditingController secondName = TextEditingController();
  TextEditingController thirdName = TextEditingController();
  RxString gender = 'gender'.obs, male = 'male'.obs, female = 'female'.obs;
  RxList hobby = [].obs;
  RxBool isCricket = false.obs,
      isFootBall = false.obs,
      isShow = false.obs,
      isshowon = false.obs;
  RxList stream = ['please select stream', 'BE', 'BTech', 'MBA', 'CA'].obs;
  RxString selectedStream = 'please select stream'.obs,
      realStream = 'select stream'.obs;
  RxInt age = 0.obs, realAge = 0.obs;
  RxBool realSwitch = false.obs;

  void hobbys() {
    hobby.clear();
    isCricket.value == true ? hobby.add('Cricket') : hobby.remove('Cricket');
    isFootBall.value == true ? hobby.add('FootBall') : hobby.remove('FootBall');
  }
}
