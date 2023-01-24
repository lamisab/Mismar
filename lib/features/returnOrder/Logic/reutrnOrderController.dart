import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ReutrnOrderController extends GetxController {
  List data = [].obs;

  Future<void> getUserApi() async {
    final response = await http.get(Uri.parse(
        'https://62d6b2bb49c87ff2af2ac3e2.mockapi.io/Projcet/Mismar'));
    // update();
    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());
      // update();
    } else {
      print(Error());
    }
    // update();
  }
}
