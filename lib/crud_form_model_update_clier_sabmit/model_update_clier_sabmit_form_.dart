// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/crud_form_model_update_clier_sabmit/crud_model_controller.dart';

class ModelCrudExGetX extends StatelessWidget {
  const ModelCrudExGetX({super.key});

  @override
  Widget build(BuildContext context) {
    CrudModelController crudModelController = Get.find();
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                  decoration: const InputDecoration(label: Text('Name:')),
                  controller: crudModelController.txtNameController),
              TextField(
                decoration: const InputDecoration(label: Text('Roll No:')),
                controller: crudModelController.txtRollController,
              ),
              TextField(
                decoration: const InputDecoration(label: Text('E-mail:')),
                controller: crudModelController.txtEmailController,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Gender:'),
                  Obx(
                    () => Radio(
                      value: crudModelController.male.value,
                      groupValue: crudModelController.gender.value,
                      onChanged: (value) {
                        crudModelController.gender.value = value!;
                        crudModelController.isShowData.value = false;
                      },
                    ),
                  ),
                  const Text('Male'),
                  Obx(
                    () => Radio(
                      value: crudModelController.female.value,
                      groupValue: crudModelController.gender.value,
                      onChanged: (value) {
                        crudModelController.gender.value = value!;
                        crudModelController.isShowData.value = false;
                      },
                    ),
                  ),
                  const Text('Female')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Hobby:'),
                  Obx(() => Checkbox(
                        value: crudModelController.isCricket.value,
                        onChanged: (value) {
                          crudModelController.isCricket.value = value!;
                          crudModelController.isShowData.value = false;
                        },
                      )),
                  const Text('Cricket'),
                  Obx(() => Checkbox(
                        value: crudModelController.isFootBall.value,
                        onChanged: (value) {
                          crudModelController.isFootBall.value = value!;
                          crudModelController.isShowData.value = false;
                        },
                      )),
                  const Text('Football')
                ],
              ),
              Obx(
                () => DropdownButton(
                  value: crudModelController.selectedStream.value,
                  items: List.generate(
                    crudModelController.stream.length,
                    (index) => DropdownMenuItem(
                      value: crudModelController.stream[index],
                      child: Text(
                        crudModelController.stream[index].toString(),
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    crudModelController.selectedStream.value = value.toString();
                    crudModelController.isShowData.value = false;
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Age:'),
                  Obx(() => Slider(
                        min: 0,
                        max: 30,
                        value: crudModelController.age.value.toDouble(),
                        onChanged: (value) {
                          crudModelController.age.value = value.toInt();
                          crudModelController.isShowData.value = false;
                        },
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Switch:'),
                  Obx(
                    () => Switch(
                      value: crudModelController.isSwitchOn.value,
                      onChanged: (value) {
                        crudModelController.isSwitchOn.value = value;
                        crudModelController.isShowData.value = false;
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  crudModelController.isShowData.value = true;
                  crudModelController.name.value = crudModelController
                      .roll.value = crudModelController.txtRollController.text;

                  crudModelController.email.value =
                      crudModelController.txtEmailController.text;

                  crudModelController.realGender.value =
                      crudModelController.gender.value;

                  crudModelController.realStream.value =
                      crudModelController.selectedStream.value;

                  crudModelController.realAge.value =
                      crudModelController.age.value;

                  crudModelController.isRealSwitch.value =
                      crudModelController.isSwitchOn.value;

                  crudModelController.addData();
                  crudModelController.updateData();
                  crudModelController.clearData();
                },
                //
                child: Text(crudModelController.isShowData.value == false
                    ? 'Submit'
                    : 'Update'),
              ),
              const SizedBox(height: 20),
              Obx(() => Expanded(
                    child: ListView.builder(
                        itemCount: crudModelController.data.length,
                        itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              crudModelController.selectedIndex.value = index;
                              crudModelController.selectData();
                              crudModelController.deleteData();
                            },
                            child: crudModelController.isShowData.value == true
                                ? Container(
                                    height: 200,
                                    width: double.infinity,
                                    color: Colors.blue,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                            'Name: ${crudModelController.data[index].name}'),
                                        Text(
                                            'Roll No: ${crudModelController.data[index].rollNo}'),
                                        Text(
                                            'E-mail: ${crudModelController.data[index].email}'),
                                        Text(
                                            'Gender: ${crudModelController.data[index].gender}'),
                                        Text(
                                            'Hobby: ${crudModelController.data[index].hobby}'),
                                        Text(
                                            'Course: ${crudModelController.data[index].stream}'),
                                        Text(
                                            'Age: ${crudModelController.data[index].age}'),
                                        Text(crudModelController
                                                    .data[index].isActive ==
                                                true
                                            ? 'Switch On'
                                            : 'Switch Off')
                                      ],
                                    ),
                                  )
                                : const SizedBox())),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
