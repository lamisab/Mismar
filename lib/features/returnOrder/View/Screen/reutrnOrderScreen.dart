import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../Logic/reutrnOrderController.dart';

final controllerApi = Get.put(ReutrnOrderController());

class ReutrnOrderScreen extends StatelessWidget {
  const ReutrnOrderScreen({super.key});
  DataTable dataBody() {
    return DataTable(
      border: TableBorder.all(),
      headingRowColor: MaterialStateProperty.resolveWith(
          (states) => Color.fromRGBO(66, 64, 64, 1)),
      columns: const [
        DataColumn(
          label: Text(
            'سبب الإسترجاع',
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontWeight: FontWeight.w700,
                fontSize: 20),
          ),
        ),
        DataColumn(
          label: Text(
            'هل تم التواصل ؟',
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontWeight: FontWeight.w700,
                fontSize: 20),
          ),
        ),
        DataColumn(
          label: Text(
            'تاريخ تسليم السيارة',
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontWeight: FontWeight.w700,
                fontSize: 20),
          ),
        ),
        DataColumn(
          label: Text(
            // textAlign: TextAlign.center,
            'تاريخ استلام السيارة',
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontWeight: FontWeight.w700,
                fontSize: 20),
          ),
        ),
        DataColumn(
          label: Text(
            'اسم العميل',
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontWeight: FontWeight.w700,
                fontSize: 20),
          ),
        ),
        DataColumn(
          label: Text(
            'رقم الطلب',
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontWeight: FontWeight.w700,
                fontSize: 20),
          ),
        ),
      ],
      rows: controllerApi.data
          .map((e) => DataRow(
                cells: [
                  DataCell(Text(e['description'])),
                  DataCell(Text(e['done'].toString())),
                  DataCell(Text(e['dateL'])),
                  DataCell(Text(e['dateF'])),
                  DataCell(Text(e['name'])),
                  DataCell(Text(e['id'])),

                  // DataCell(Text(controllerApi.data[e]['name'])),
                  // DataCell(Text(controllerApi.data[e]['dateF'])),
                  // DataCell(Text(controllerApi.data[e]['dateL'])),
                  // DataCell(Text(controllerApi.data[e]['done'].toString())),
                  // DataCell(Text(controllerApi.data[e]['description'])),
                ],
              ))
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: controllerApi.getUserApi(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("data");
          } else {
            return Column(
              children: [dataBody()],
            );
          }
        },
      ),
    );
  }
}
