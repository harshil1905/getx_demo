import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/chak_number_palidrom_amstrong_praim/chak_number_contoller.dart';

class ChakNumber extends StatefulWidget {
  const ChakNumber({super.key});

  @override
  State<ChakNumber> createState() => _ChakNumberState();
}

class _ChakNumberState extends State<ChakNumber> {
  @override
  Widget build(BuildContext context) {
    NumberController numberController = Get.find();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: numberController.checknumber,
              onChanged: (value) {},
            ),
            MaterialButton(
              onPressed: () {
                numberController
                    .palindrom(int.parse(numberController.checknumber.text));
              },
              color: Colors.teal.shade100,
              child: const Text('check palindrom'),
            ),
            MaterialButton(
              onPressed: () {
                numberController
                    .amstrong(int.parse(numberController.checknumber.text));
              },
              color: Colors.teal.shade200,
              child: const Text('check Amstrong'),
            ),
            MaterialButton(
              onPressed: () {
                numberController
                    .prime(int.parse(numberController.checknumber.text));
              },
              color: Colors.teal.shade300,
              child: const Text('check prine'),
            ),
            Obx(
              () => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(numberController.resultpalindrom.value),
                  Text(numberController.resultamstrong.value),
                  Text(numberController.resultprinme.value)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
