// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CrudController extends GetxController {
  TextEditingController txtNameController = TextEditingController();
  TextEditingController txtRollController = TextEditingController();
  TextEditingController txtEmailController = TextEditingController();
  RxString name = ''.obs, roll = ''.obs, email = ''.obs;
  RxList<Map> data = <Map>[].obs; // for data Add and Update
  RxString gender = ''.obs, female = 'Female'.obs, male = 'Male'.obs;
  RxString realGender = ''.obs;
  RxBool isCricket = false.obs,
      isFootBall = false.obs,
      isSwitchOn = false.obs,
      isRealSwitch = false.obs,
      isShowData = false.obs; // For show Container

  RxList stream = ['Select Stream', 'B.com', 'IT', 'Diploma', 'B.B.A'].obs;
  RxString selectedStream = 'Select Stream'.obs,
      realStream = 'Select Stream'.obs;
  RxInt age = 0.obs, realAge = 0.obs;
  RxList hobby = [].obs;
  RxInt selectedIndex = 0.obs;

  void hobbyDetails() {
    hobby.clear();
    isCricket.value == true ? hobby.add('Cricket') : hobby.remove('Cricket');
    isFootBall.value == true ? hobby.add('Football') : hobby.remove('Football');
  }

  void addData() {
    isShowData.value = true;
    hobbyDetails();
    data.add({
      'Name': txtNameController.text,
      'Roll': txtRollController.text,
      'E-mail': txtEmailController.text,
      'Gender': gender.value,
      'Hobby': List.from(hobby.map((element) => element)).toList(),
      'Stream': selectedStream.value,
      'Age': age.value,
      'Switch': isSwitchOn.value
    });
  }

  void updateData() {
    isShowData.value = true;
    // hobbyDetails();
    data[selectedIndex.value]['Name'] = txtNameController.text;
    data[selectedIndex.value]['Roll'] = txtRollController.text;
    data[selectedIndex.value]['E-mail'] = txtEmailController.text;
    data[selectedIndex.value]['Gender'] = gender.value;
    data[selectedIndex.value]['Hobby'] = hobby;
    data[selectedIndex.value]['Stream'] = selectedStream.value;
    data[selectedIndex.value]['Age'] = age.value;
    data[selectedIndex.value]['Switch'] = isSwitchOn.value;
  }

  void selectData() {
    txtNameController.text = data[selectedIndex.value]['Name'];
    txtRollController.text = data[selectedIndex.value]['Roll'];
    txtEmailController.text = data[selectedIndex.value]['E-mail'];
    gender.value = data[selectedIndex.value]['Gender'];
    selectedStream.value = data[selectedIndex.value]['Stream'];
    age.value = data[selectedIndex.value]['Age'];
    isSwitchOn.value = data[selectedIndex.value]['Switch'];
    hobby.value = data[selectedIndex.value]['Hobby'].map((e) => e).toList();
    hobby.contains('Cricket')
        ? isCricket.value = true
        : isCricket.value = false;
    hobby.contains('Football')
        ? isFootBall.value = true
        : isFootBall.value = false;
    isShowData.value = true;
  }

  void deleteData() {
    data.removeAt(selectedIndex.value);
  }

  void clearData() {
    txtNameController.clear();
    txtRollController.clear();
    txtEmailController.clear();
    gender.value = '';
    isCricket.value = false;
    isFootBall.value = false;
    selectedStream.value = 'Select Stream';
    age.value = 0;
    isSwitchOn.value = false;
  }
}
