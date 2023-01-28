import 'package:get/get.dart';
import 'package:mismar/features/returnOrder/View/Widget/reutrnOrderTable.dart';

import '../Logic/reutrnOrderController.dart';

final controllerApi = Get.put(ReutrnOrderController());

class ReutrnOrderModel {
  final String? id, name, description;
  final DateTime? dateF, dateL;
  final bool? done;

  ReutrnOrderModel({
    this.id,
    this.name,
    this.description,
    this.dateF,
    this.dateL,
    this.done,
  });
  factory ReutrnOrderModel.fromJson(Map<String, dynamic> json) {
    return ReutrnOrderModel(
      id: json['id'],
      name: json['name'].toString(),
      description: json['description'].toString(),
      dateF: json['dateF'],
      dateL: json['dateL'],
      done: json['done'],
    );
  }
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'dateF': dateF,
        'dateL': dateL,
        'done': done,
      };
}
