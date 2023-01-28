import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:mismar/features/returnOrder/View/Screen/test.dart';
import 'package:number_paginator/number_paginator.dart';

import '../../Logic/reutrnOrderController.dart';
import '../Widget/reutrnOrderTable.dart';

final controllerApi = Get.put(ReutrnOrderController());
String dropdownvalue = 'لا';

// List of items in our dropdown menu
var items = [
  'نعم',
  'لا',
];

class ReutrnOrderScreen extends StatelessWidget {
  ReutrnOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: controllerApi.getUserApi(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("data");
          } else {
            return Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 1100),
                    child: Text(
                      '(${controllerApi.data.length}) عدد الطلبات',
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'IBM Plex Sans Arabic'),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ReutrnOrderTable()
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
