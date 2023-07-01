import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/home_page_getx/home_page_controller.dart';

class RadioCheckBoxExample extends StatelessWidget {
  const RadioCheckBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    RadioCheckBoxController radioCheckBoxController = Get.find();
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: radioCheckBoxController.firstrName,
              ),
              TextField(
                controller: radioCheckBoxController.secondName,
              ),
              TextField(
                controller: radioCheckBoxController.thirdName,
              ),
              Row(
                children: [
                  const Text('Gender :'),
                  Obx(
                    () => Radio(
                      value: radioCheckBoxController.male.value,
                      groupValue: radioCheckBoxController.gender.value,
                      onChanged: (value) {
                        radioCheckBoxController.gender.value = value!;
                        radioCheckBoxController.isShow.value = false;
                      },
                    ),
                  ),
                  const Text('Male'),
                  Obx(
                    () => Radio(
                      value: radioCheckBoxController.female.value,
                      groupValue: radioCheckBoxController.gender.value,
                      onChanged: (value) {
                        radioCheckBoxController.gender.value = value!;
                        radioCheckBoxController.isShow.value = false;
                      },
                    ),
                  ),
                  const Text('female')
                ],
              ),
              Row(
                children: [
                  const Text('Hobby'),
                  Obx(
                    () => Checkbox(
                      value: radioCheckBoxController.isCricket.value,
                      onChanged: (value) {
                        radioCheckBoxController.isCricket.value = value!;
                        radioCheckBoxController.isShow.value = false;
                      },
                    ),
                  ),
                  const Text('cricket'),
                  Obx(
                    () => Checkbox(
                      value: radioCheckBoxController.isFootBall.value,
                      onChanged: (value) {
                        radioCheckBoxController.isFootBall.value = value!;
                        radioCheckBoxController.isShow.value = false;
                      },
                    ),
                  ),
                  const Text('football')
                ],
              ),
              Obx(
                () => DropdownButton(
                  value: radioCheckBoxController.selectedStream.value,
                  items: List.generate(
                    radioCheckBoxController.stream.length,
                    (index) => DropdownMenuItem(
                      value: radioCheckBoxController.stream[index],
                      child: Text(
                        radioCheckBoxController.stream[index],
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    radioCheckBoxController.selectedStream.value =
                        value.toString();
                    radioCheckBoxController.isShow.value = false;
                  },
                ),
              ),
              Obx(
                () => Slider(
                  divisions: int.tryParse('10'),
                  min: 0,
                  max: 10,
                  value: radioCheckBoxController.age.value.toDouble(),
                  onChanged: (value) {
                    radioCheckBoxController.age.value = value.toInt();
                    radioCheckBoxController.isShow.value = false;
                  },
                ),
              ),
              Obx(() => Switch(
                    value: radioCheckBoxController.isshowon.value,
                    onChanged: (value) {
                      radioCheckBoxController.isshowon.value = value;
                      radioCheckBoxController.isShow.value = false;
                    },
                  )),
              MaterialButton(
                onPressed: () {
                  radioCheckBoxController.isShow.value = true;
                  radioCheckBoxController.hobbys();
                  radioCheckBoxController.realAge.value =
                      radioCheckBoxController.age.value;
                  radioCheckBoxController.realSwitch.value =
                      radioCheckBoxController.isshowon.value;
                },
                color: Colors.teal.shade100,
                child: const Text('submit'),
              ),
              Obx(
                () => radioCheckBoxController.isShow.value == true
                    ? Container(
                        height: 200,
                        width: 200,
                        color: Colors.teal.shade100,
                        child: Column(
                          children: [
                            Text(radioCheckBoxController.firstrName.text),
                            Text(radioCheckBoxController.secondName.text),
                            Text(radioCheckBoxController.thirdName.text),
                            Text(radioCheckBoxController.gender.value),
                            Text(radioCheckBoxController.hobby.toString()),
                            Text(radioCheckBoxController.selectedStream.value),
                            Text(radioCheckBoxController.realAge.value
                                .toString()),
                            // ignore: unrelated_type_equality_checks
                            Text(radioCheckBoxController.realSwitch == true
                                ? 'switch on'
                                : 'switch off')
                          ],
                        ),
                      )
                    : const SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
