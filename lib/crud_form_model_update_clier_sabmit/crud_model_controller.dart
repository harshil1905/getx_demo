// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CrudModelController extends GetxController {
  TextEditingController txtNameController = TextEditingController();
  TextEditingController txtRollController = TextEditingController();
  TextEditingController txtEmailController = TextEditingController();
  RxString name = ''.obs, roll = ''.obs, email = ''.obs;
  RxList<User> data = <User>[].obs; // for data Add and Update
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
      'Hobby': RxList.from(hobby.map((element) => element)).toList(),
      'Stream': selectedStream.value,
      'Age': age.value,
      'Switch': isSwitchOn.value
    } as User);
  }

  void updateData() {
    isShowData.value = true;
    // hobbyDetails();
    data[selectedIndex.value].name = txtNameController.text;
    data[selectedIndex.value].rollNo = txtRollController.text;
    data[selectedIndex.value].email = txtEmailController.text;
    data[selectedIndex.value].gender = gender.value;
    data[selectedIndex.value].hobby = hobby as List<String>;
    data[selectedIndex.value].stream = selectedStream.value;
    data[selectedIndex.value].age = age.value;
    data[selectedIndex.value].isActive = isSwitchOn.value;
    data.refresh();
  }

  void selectData() {
    txtNameController.text = data[selectedIndex.value].name;
    txtRollController.text = data[selectedIndex.value].rollNo;
    txtEmailController.text = data[selectedIndex.value].email;
    gender.value = data[selectedIndex.value].gender;
    selectedStream.value = data[selectedIndex.value].stream;
    age.value = data[selectedIndex.value].age;
    isSwitchOn.value = data[selectedIndex.value].isActive;
    hobby.value = data[selectedIndex.value].hobby.map((e) => e).toList();
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

class User {
  String name, rollNo, email, gender, stream;
  int age;
  bool isActive;
  List<String> hobby;
  User(
      {required this.age,
      required this.email,
      required this.gender,
      required this.isActive,
      required this.name,
      required this.rollNo,
      required this.hobby,
      required this.stream});
}
