import 'dart:convert';
import 'dart:io';

import 'package:redesign_starbucks/constants/service/service_constants.dart';
import 'package:redesign_starbucks/models/error_response_model.dart';
import 'package:redesign_starbucks/view/home/models/offer_response_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class HomeService {
  Future<offerResponseModel> getOffer() async {
    SharedPreferences cacheToken = await SharedPreferences.getInstance();
    final response = await http.get(Uri.parse(ServiceURL.OFFER_URL), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'authorization': cacheToken.getString('token').toString(),
    });

    switch (response.statusCode) {
      case HttpStatus.ok:
        if (offerResponseModel.fromJson(jsonDecode(response.body)).status ??
            false) {
          return offerResponseModel.fromJson(jsonDecode(response.body));
        }
        return throw ErrorResponseModel.fromJson(jsonDecode(response.body));
      default:
        return throw ErrorResponseModel.fromJson(jsonDecode(response.body));
    }
  }
}
