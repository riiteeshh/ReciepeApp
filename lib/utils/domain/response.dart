import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:reciepe_app/utils/model/response_model.dart';

Future<ResponseModel?> getReciepeData() async {
  final response =
      await rootBundle.loadString('lib/assets/json/food_reciepe.json');
  return ResponseModel.fromJson(jsonDecode(response));
}
