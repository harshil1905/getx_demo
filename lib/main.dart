import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/Patterns/Patterns_contoller.dart';
import 'package:getx_demo/Patterns/pattens.dart';
import 'package:getx_demo/chak_number_palidrom_amstrong_praim/chak_number_contoller.dart';
import 'package:getx_demo/crud_form_model_update_clier_sabmit/crud_model_controller.dart';
import 'package:getx_demo/crud_update_in%20form/crud_controller.dart';
import 'package:getx_demo/home_page_getx/home_page_controller.dart';

void main() {
  runApp(const StateManagementDemo());
}

class StateManagementDemo extends StatelessWidget {
  const StateManagementDemo({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomepageController());
    Get.put(RadioCheckBoxController());
    Get.put(CrudController());
    Get.put(CrudModelController());
    Get.put(User);
    Get.put(NumberController());
    Get.put(Patternscontollre());
    return const GetMaterialApp(
      home: PatternsExampale(),
    );
  }
}
