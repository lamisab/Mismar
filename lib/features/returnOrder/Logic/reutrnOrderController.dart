import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ReutrnOrderController extends GetxController {
  List data = [].obs;
  // RxInt totalData = 100.obs;

  // RxInt DataPerPage = 5.obs;

  // RxInt currentPage = 0.obs;

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

  // num pageCount() {
  //   return totalData / DataPerPage;
  // }
  // // num pageCount() {
  // //   return totalData / DataPerPage;
  // // }

  // previousPage() {
  //   if (currentPage != 0) {
  //     currentPage -= 1;
  //   }
  // }

  // nextPage() {
  //   if ((currentPage + 1) < pageCount()) {
  //     currentPage += 1;
  //   }
  // }
}
