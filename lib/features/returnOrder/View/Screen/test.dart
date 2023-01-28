// import 'package:flutter/material.dart';
// import 'package:number_paginator/number_paginator.dart';

// import '../../Logic/reutrnOrderController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../Logic/reutrnOrderController.dart';
import '../../Model/returnOrderModel.dart';
import '../Widget/reutrnOrderTable.dart';

final controllerApi = Get.put(ReutrnOrderController());

// class NumbersPage extends StatefulWidget {
//   const NumbersPage({Key? key}) : super(key: key);

//   @override
//   _NumbersPageState createState() => _NumbersPageState();
// }

// class _NumbersPageState extends State<NumbersPage> {
//   final int _numPages = 10;
//   int _currentPage = 0;

//   @override
//   Widget build(BuildContext context) {
//     var pages = List.generate(
//       _numPages,
//       (index) => Center(
//         child: Text(
//           "Page ${index + 1}",
//           style: Theme.of(context).textTheme.headline1,
//         ),
//       ),
//     );

//     return Scaffold(
//       body: pages[_currentPage],
//       // card for elevation
//       bottomNavigationBar: Card(
//         margin: EdgeInsets.zero,
//         elevation: 4,
//         child: NumberPaginator(
//           // by default, the paginator shows numbers as center content
//           numberPages: _numPages,
//           onPageChange: (int index) {
//             setState(() {
//               _currentPage = index;
//             });
//           },
//         ),
//       ),
//     );
//   }

dataBody() {
  return DataTable(
      headingRowHeight: 80,
      dataRowHeight: 120,
      border: TableBorder.all(),
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
        // DataColumn(
        //   label: SizedBox(
        //     width: 100,
        //     child: Center(
        //       child: Text(
        //         'هل تم\n التواصل ؟',
        //         textAlign: TextAlign.center,
        //         style: TextStyle(
        //             color: Color.fromRGBO(255, 255, 255, 1),
        //             fontWeight: FontWeight.w700,
        //             fontSize: 20),
        //       ),
        //     ),
        //   ),
        // ),
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
            width: 100,
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
            width: 300,
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
        4,
        (index) => DataRow(
          cells: [
            DataCell(Center(
              child: Text(
                controllerApi.data[index]['description'],
                style: const TextStyle(
                    fontSize: 18, color: Color.fromRGBO(75, 75, 75, 1)),
              ),
            )),
            // const DataCell(DropDown()),
            DataCell(Center(
              child: Text(
                controllerApi.data[index]['dateL'],
                style: const TextStyle(
                    fontSize: 18, color: Color.fromRGBO(75, 75, 75, 1)),
              ),
            )),
            DataCell(Center(
              child: Text(
                controllerApi.data[index]['dateF'],
                style: const TextStyle(
                    fontSize: 18, color: Color.fromRGBO(75, 75, 75, 1)),
              ),
            )),
            DataCell(Center(
              child: Text(
                controllerApi.data[index]['name'],
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

            // DataCell(Text(controllerApi.data[e]['name'])),
            // DataCell(Text(controllerApi.data[e]['dateF'])),
            // DataCell(Text(controllerApi.data[e]['dateL'])),
            // DataCell(Text(controllerApi.data[e]['done'].toString())),
            // DataCell(Text(controllerApi.data[e]['description'])),
          ],
        ),
      ));
}

// }
int totalProducts = 100;
int productsPerPage = 3;
int currentPage = 0;

class Test extends StatefulWidget {
  Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  final List<ReutrnOrderModel> data = List.generate(
      3,
      (index) => ReutrnOrderModel(
            // id: 'id',
            name: 'name',
            // description: 'description',
            // dateF: DateTime.now(),
            // dateL: DateTime.now(),
            //  done: false
          )).toList();

  // int pageCount = totalProducts / productsPerPage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          GridView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: productsPerPage,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                width: 30,
                alignment: Alignment.center,
                child: Text(
                  data[index + (currentPage * productsPerPage)].name!,
                ),
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              // crossAxisSpacing: 1,
              // mainAxisSpacing: 1,
            ),
          ),
          Row(children: [
            TextButton(
              child: Text("Previous page"),
              onPressed: (currentPage - 1) < 0 ? null : previousPage,
            ),
            TextButton(
              child: Text("Next page"),
              onPressed: (currentPage + 1) < pageCount() ? nextPage : null,
            )
          ]),
        ],
      ),
    ));
  }

  num pageCount() {
    return totalProducts / productsPerPage;
  }

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
