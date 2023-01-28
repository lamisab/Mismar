import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/returnOrder/View/Screen/reutrnOrderScreen.dart';
import 'features/returnOrder/View/Screen/test.dart';
import 'features/returnOrder/View/Widget/reutrnOrderTable.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: ReutrnOrderScreen(),
    );
  }
}
