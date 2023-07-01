// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/crud_update_in%20form/crud_controller.dart';

class CrudExGetX extends StatelessWidget {
  const CrudExGetX({super.key});

  @override
  Widget build(BuildContext context) {
    CrudController crudController = Get.find();
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                  decoration: const InputDecoration(label: Text('Name:')),
                  controller: crudController.txtNameController),
              TextField(
                decoration: const InputDecoration(label: Text('Roll No:')),
                controller: crudController.txtRollController,
              ),
              TextField(
                decoration: const InputDecoration(label: Text('E-mail:')),
                controller: crudController.txtEmailController,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Gender:'),
                  Obx(
                    () => Radio(
                      value: crudController.male.value,
                      groupValue: crudController.gender.value,
                      onChanged: (value) {
                        crudController.gender.value = value!;
                        crudController.isShowData.value = false;
                      },
                    ),
                  ),
                  const Text('Male'),
                  Obx(
                    () => Radio(
                      value: crudController.female.value,
                      groupValue: crudController.gender.value,
                      onChanged: (value) {
                        crudController.gender.value = value!;
                        crudController.isShowData.value = false;
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
                        value: crudController.isCricket.value,
                        onChanged: (value) {
                          crudController.isCricket.value = value!;
                          crudController.isShowData.value = false;
                        },
                      )),
                  const Text('Cricket'),
                  Obx(() => Checkbox(
                        value: crudController.isFootBall.value,
                        onChanged: (value) {
                          crudController.isFootBall.value = value!;
                          crudController.isShowData.value = false;
                        },
                      )),
                  const Text('Football')
                ],
              ),
              Obx(
                () => DropdownButton(
                  value: crudController.selectedStream.value,
                  items: List.generate(
                      crudController.stream.length,
                      (index) => DropdownMenuItem(
                          value: crudController.stream[index],
                          child:
                              Text(crudController.stream[index].toString()))),
                  onChanged: (value) {
                    crudController.selectedStream.value = value.toString();
                    crudController.isShowData.value = false;
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
                        value: crudController.age.value.toDouble(),
                        onChanged: (value) {
                          crudController.age.value = value.toInt();
                          crudController.isShowData.value = false;
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
                      value: crudController.isSwitchOn.value,
                      onChanged: (value) {
                        crudController.isSwitchOn.value = value;
                        crudController.isShowData.value = false;
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  crudController.isShowData.value = true;
                  crudController.name.value = crudController.roll.value =
                      crudController.txtRollController.text;

                  crudController.email.value =
                      crudController.txtEmailController.text;

                  crudController.realGender.value = crudController.gender.value;

                  crudController.realStream.value =
                      crudController.selectedStream.value;

                  crudController.realAge.value = crudController.age.value;

                  crudController.isRealSwitch.value =
                      crudController.isSwitchOn.value;

                  crudController.addData();
                  crudController.updateData();
                  crudController.clearData();
                },
                child: Text(crudController.isShowData.value == false
                    ? 'Submit'
                    : 'Update'),
              ),
              const SizedBox(height: 20),
              Obx(() => Expanded(
                    child: ListView.builder(
                        itemCount: crudController.data.length,
                        itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              crudController.selectedIndex.value = index;
                              crudController.selectData();
                              crudController.deleteData();
                            },
                            child: crudController.isShowData.value == true
                                ? Container(
                                    height: 200,
                                    width: double.infinity,
                                    color: Colors.blue,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                            'Name: ${crudController.data[index]['Name']}'),
                                        Text(
                                            'Roll No: ${crudController.data[index]['Roll']}'),
                                        Text(
                                            'E-mail: ${crudController.data[index]['E-mail']}'),
                                        Text(
                                            'Gender: ${crudController.data[index]['Gender']}'),
                                        Text(
                                            'Hobby: ${crudController.data[index]['Hobby']}'),
                                        Text(
                                            'Course: ${crudController.data[index]['Stream']}'),
                                        Text(
                                            'Age: ${crudController.data[index]['Age']}'),
                                        Text(crudController.data[index]
                                                    ['Switch'] ==
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
