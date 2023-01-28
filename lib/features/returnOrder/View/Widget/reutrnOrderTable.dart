import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Logic/reutrnOrderController.dart';
import '../Screen/reutrnOrderScreen.dart';
import 'dropdownButton.dart';

final controllerApi = Get.put(ReutrnOrderController());

class ReutrnOrderTable extends StatefulWidget {
  ReutrnOrderTable({super.key});

  @override
  State<ReutrnOrderTable> createState() => _ReutrnOrderTableState();
}

class _ReutrnOrderTableState extends State<ReutrnOrderTable> {
  int totalData = controllerApi.data.length;

  int DataPerPage = 5;

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DataTable(
            headingRowHeight: 80,
            dataRowHeight: 120,
            border: TableBorder.all(
                color: Color.fromRGBO(216, 216, 216, 1),
                borderRadius: BorderRadius.circular(4)),
            headingRowColor: MaterialStateProperty.resolveWith(
                (states) => const Color.fromRGBO(66, 64, 64, 1)),
            columns: const [
              DataColumn(
                label: SizedBox(
                  width: 100,
                  child: Center(
                    child: Text(
                      'سبب \nالاسترجاع',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
              DataColumn(
                label: SizedBox(
                  width: 100,
                  child: Center(
                    child: Text(
                      'هل تم\n التواصل ؟',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
              DataColumn(
                label: SizedBox(
                  width: 100,
                  child: Center(
                    child: Text(
                      'تاريخ تسليم ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
              DataColumn(
                label: SizedBox(
                  width: 100,
                  child: Center(
                    child: Text(
                      // textAlign: TextAlign.center,
                      'تاريخ استلام \nالسيارة',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
              DataColumn(
                label: SizedBox(
                  width: 168,
                  height: 130,
                  child: Center(
                    child: Text(
                      'اسم العميل',
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
              DataColumn(
                label: SizedBox(
                  width: 356,
                  height: 1300,
                  child: Center(
                    child: Text(
                      'رقم الطلب',
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
            rows: List.generate(
              5,
              (index) => DataRow(
                cells: [
                  DataCell(Center(
                    child: Text(
                      controllerApi.data[index + (currentPage * DataPerPage)]
                          ['description'],
                      style: const TextStyle(
                          fontSize: 18, color: Color.fromRGBO(75, 75, 75, 1)),
                    ),
                  )),
                  DataCell(DropDown()),
                  DataCell(Center(
                    child: Text(
                      controllerApi.data[index + (currentPage * DataPerPage)]
                          ['dateL'],
                      style: const TextStyle(
                          fontSize: 18, color: Color.fromRGBO(75, 75, 75, 1)),
                    ),
                  )),
                  DataCell(Center(
                    child: Text(
                      controllerApi.data[index + (currentPage * DataPerPage)]
                          ['dateF'],
                      style: const TextStyle(
                          fontSize: 18, color: Color.fromRGBO(75, 75, 75, 1)),
                    ),
                  )),
                  DataCell(Center(
                    child: Text(
                      controllerApi.data[index + (currentPage * DataPerPage)]
                          ['name'],
                      style: const TextStyle(
                          fontSize: 18, color: Color.fromRGBO(75, 75, 75, 1)),
                    ),
                  )),
                  const DataCell(Center(
                    child: Text(
                      '23011603756',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(75, 75, 75, 1),
                      ),
                    ),
                  )),
                ],
              ),
            )),
        Row(children: [
          SizedBox(
            width: 235,
            height: 80,
          ),
          Container(
            alignment: Alignment.center,
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              // color: Color(0xff03b673),
              border: Border.all(color: Color.fromRGBO(185, 185, 185, 1)),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: IconButton(
                iconSize: 16,
                onPressed: () {},
                icon: Icon(Icons.keyboard_double_arrow_left)),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            alignment: Alignment.center,
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              // color: Color(0xff03b673),
              border: Border.all(color: Color.fromRGBO(185, 185, 185, 1)),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: IconButton(
                iconSize: 12,
                style: ButtonStyle(alignment: Alignment.center),
                onPressed: (currentPage - 1) < 0 ? null : previousPage,
                icon: Icon(Icons.arrow_back_ios)),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
              alignment: Alignment.center,
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: Color.fromRGBO(181, 0, 0, 1),
                border: Border.all(color: Color.fromRGBO(185, 185, 185, 1)),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              // color: Color.fromARGB(255, 190, 169, 167),
              child: Center(
                  child: Text(
                '${currentPage + 1}',
                style: TextStyle(color: Colors.white),
              ))),
          SizedBox(
            width: 5,
          ),
          Container(
            alignment: Alignment.center,
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              // color: Color(0xff03b673),
              border: Border.all(color: Color.fromRGBO(185, 185, 185, 1)),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: IconButton(
                style: ButtonStyle(alignment: Alignment.center),
                iconSize: 12,
                onPressed: (currentPage + 1) < pageCount() ? nextPage : null,
                icon: Icon(Icons.arrow_forward_ios)),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            alignment: Alignment.center,
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              // color: Color(0xff03b673),
              border: Border.all(color: Color.fromRGBO(185, 185, 185, 1)),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: IconButton(
                iconSize: 16,
                onPressed: () {},
                icon: Icon(Icons.keyboard_double_arrow_right)),
          ),
        ]),
      ],
    );
  }

  num pageCount() {
    return totalData / DataPerPage;
  }
  // num pageCount() {
  //   return totalData / DataPerPage;
  // }

  previousPage() {
    if (currentPage != 0) {
      setState(() {
        currentPage -= 1;
      });
    }
  }

  nextPage() {
    if ((currentPage + 1) < pageCount()) {
      setState(() {
        currentPage += 1;
      });
    }
  }
}
