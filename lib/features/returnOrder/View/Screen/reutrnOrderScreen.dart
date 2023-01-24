import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../Logic/reutrnOrderController.dart';

final controllerApi = Get.put(ReutrnOrderController());

class ReutrnOrderScreen extends StatelessWidget {
  ReutrnOrderScreen({super.key});

  DataTable dataBody() {
    return DataTable(
      border: TableBorder.all(),
      headingRowColor: MaterialStateProperty.resolveWith(
          (states) => Color.fromRGBO(66, 64, 64, 1)),
      columns: const [
        DataColumn(
          label: Text(
            'سبب \nالاسترجاع',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontWeight: FontWeight.w700,
                fontSize: 20),
          ),
        ),
        DataColumn(
          label: Text(
            'هل تم\n التواصل ؟',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontWeight: FontWeight.w700,
                fontSize: 20),
          ),
        ),
        DataColumn(
          label: Text(
            'تاريخ تسليم ',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontWeight: FontWeight.w700,
                fontSize: 20),
          ),
        ),
        DataColumn(
          label: Text(
            // textAlign: TextAlign.center,
            'تاريخ استلام \nالسيارة',
            textAlign: TextAlign.center,
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
                  DataCell(Text(
                    e['description'],
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(75, 75, 75, 1)),
                  )),
                  DataCell(DropDown()),
                  DataCell(Text(
                    e['dateL'],
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(75, 75, 75, 1)),
                  )),
                  DataCell(Text(
                    e['dateF'],
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(75, 75, 75, 1)),
                  )),
                  DataCell(Text(
                    e['name'],
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(75, 75, 75, 1)),
                  )),
                  DataCell(Text(
                    e['id'],
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(75, 75, 75, 1)),
                  )),

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
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 700),
                  child: Text(
                    '(${controllerApi.data.length}) عدد الطلبات',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                dataBody()
              ],
            );
          }
        },
      ),
    );
  }
}

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

String dropdownvalue = 'لا';

// List of items in our dropdown menu
var items = [
  'نعم',
  'لا',
].obs;

class _DropDownState extends State<DropDown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dropdownvalue,
      items: items.map((items) {
        return DropdownMenuItem(
          value: items,
          child: Text('${items}'),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {});
        dropdownvalue = value!;
      },
    );
  }
}
