import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/Patterns/Patterns_contoller.dart';

class PatternsExampale extends StatefulWidget {
  const PatternsExampale({super.key});

  @override
  State<PatternsExampale> createState() => _PatternsExampaleState();
}

class _PatternsExampaleState extends State<PatternsExampale> {
  @override
  Widget build(BuildContext context) {
    Patternscontollre patternscontollre = Get.find();
    // ignore: unused_local_variable
    List<Map> patternList = [
      {
        'Name': 'pattern 1',
        'function': (int n) => patternscontollre.pattern1(n)
      },
      {
        'Name': 'pattern 2',
        'function': (int n) => patternscontollre.pattern2(n)
      },
      {
        'Name': 'pattern 3',
        'function': (int n) => patternscontollre.pattern3(n)
      },
      {
        'Name': 'pattern 4',
        'function': (int n) => patternscontollre.pattern4(n)
      },
      {
        'Name': 'pattern 5',
        'function': (int n) => patternscontollre.pattern5(n)
      },
      {
        'Name': 'pattern 6',
        'function': (int n) => patternscontollre.pattern6(n)
      },
      {
        'Name': 'pattern 7',
        'function': (int n) => patternscontollre.pattern7(n)
      },
      {
        'Name': 'pattern 8',
        'function': (int n) => patternscontollre.pattern8(n)
      },
      {
        'Name': 'pattern 9',
        'function': (int n) => patternscontollre.pattern9(n)
      },
      {
        'Name': 'pattern 10',
        'function': (int n) => patternscontollre.pattern10(n)
      },
      {
        'Name': 'pattern 11',
        'function': (int n) => patternscontollre.pattern11(n)
      },
      {
        'Name': 'pattern 12',
        'function': (int n) => patternscontollre.pattern12(n)
      },
      {
        'Name': 'pattern 13',
        'function': (int n) => patternscontollre.pattern13(n)
      },
      {
        'Name': 'pattern 14',
        'function': (int n) => patternscontollre.pattern14(n)
      },
      {
        'Name': 'pattern 15',
        'function': (int n) => patternscontollre.pattern15(n)
      },
      {
        'Name': 'pattern 16',
        'function': (int n) => patternscontollre.pattern16(n)
      },
      {
        'Name': 'pattern 17',
        'function': (int n) => patternscontollre.pattern17(n)
      },
      {
        'Name': 'pattern 18',
        'function': (int n) => patternscontollre.pattern18(n)
      },
      {
        'Name': 'pattern 19',
        'function': (int n) => patternscontollre.pattern19(n)
      },
      {
        'Name': 'pattern 20',
        'function': (int n) => patternscontollre.pattern20(n)
      },
      {
        'Name': 'pattern 21',
        'function': (int n) => patternscontollre.pattern21(n)
      },
      {
        'Name': 'pattern 22',
        'function': (int n) => patternscontollre.pattern22(n)
      },
      {
        'Name': 'pattern 23',
        'function': (int n) => patternscontollre.pattern23(n)
      },
      {
        'Name': 'pattern 24',
        'function': (int n) => patternscontollre.pattern24(n)
      },
    ];
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: patternscontollre.chacekpattern,
                decoration: const InputDecoration(
                    label: Text('enter pattern no'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: patternList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisExtent: 30,
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 3),
                  itemBuilder: (context, index) => MaterialButton(
                    onPressed: () {
                      patternList[index]['function'](
                        int.parse(patternscontollre.chacekpattern.text),
                      );
                    },
                    child: Text(patternList[index]['Name']),
                  ),
                ),
              ),
              Obx(() => Center(
                    child: AlertDialog(
                      backgroundColor: Colors.pink.shade100,
                      actions: [
                        Text(patternscontollre.patternResult.value),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
