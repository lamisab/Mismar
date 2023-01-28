import 'package:flutter/material.dart';

class WidgetDataRow extends StatelessWidget {
  // final Icon IconWidgeet;
  // final String TextWidget;
  const WidgetDataRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(0.0),
      children: <Widget>[
        Image.asset('assets/images/logoMisMar.png'),
        ListTile(
          title: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "الرئيسية",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ),
          trailing: Icon(
            Icons.pie_chart_outline,
            color: Colors.white,
          ),
          leading: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          title: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "الطلبات",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          trailing: Icon(
            Icons.list_alt_outlined,
            color: Colors.white,
          ),
          onTap: () => {},
          leading: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        Divider(),
        ListTile(
          title: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "المستخدمين",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ),
          trailing: Icon(
            Icons.groups_outlined,
            color: Colors.white,
          ),
          onTap: () => {},
          leading: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        Divider(),
        ListTile(
          title: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "الأوقات",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ),
          trailing: Icon(
            Icons.access_time_outlined,
            color: Colors.white,
          ),
          onTap: () => {},
          leading: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        Divider(),
        ListTile(
          title: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "الإستبيان",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ),
          trailing: Icon(
            Icons.playlist_add_check_circle_outlined,
            color: Colors.white,
          ),
          onTap: () {},
          leading: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        Divider(),
        ListTile(
          title: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "الخدمات",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ),
          trailing: Icon(
            Icons.grid_view_outlined,
            color: Colors.white,
          ),
          onTap: () {},
          leading: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        Divider(),
        ListTile(
          title: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "العروض",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ),
          trailing: Icon(
            Icons.tag,
            color: Colors.white,
          ),
          onTap: () {},
          leading: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        Divider(),
        ListTile(
          title: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "النظام",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ),
          trailing: Icon(
            Icons.settings_outlined,
            color: Colors.white,
          ),
          onTap: () {},
          leading: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        Divider(),
      ],
    );
  }
}
