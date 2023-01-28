import 'package:flutter/material.dart';

import '../Screen/reutrnOrderScreen.dart';

String dropdownvalue = 'لا';

// List of items in our dropdown menu
var items = [
  'نعم',
  'لا',
];

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: Container(
          width: 103,
          height: 45,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1.0,
                style: BorderStyle.solid,
                color: Color.fromRGBO(129, 129, 129, 1),
              ),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: DropdownButton(
              items: items.map((items) {
                return DropdownMenuItem(
                  value: items,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        '${items}',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              }).toList(),
              // alignment: Alignment.centerLeft,
              icon: Icon(
                Icons.keyboard_arrow_down,
              ),
              // isExpanded: true,
              value: dropdownvalue,

              onChanged: (value) {
                setState(() {
                  dropdownvalue = value!;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
