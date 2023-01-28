import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'widgetData.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      // endDrawer: Drawer(
      //   backgroundColor: Color.fromRGBO(51, 51, 51, 1),
      //   child: WidgetDataRow(),
      // ),
      body: Stack(children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            width: 300,
            color: Color.fromRGBO(51, 51, 51, 1),
            child: WidgetDataRow(),
          ),
        ),
      ]),
    );
  }
}
