import 'package:flutter/material.dart';
import 'package:redesign_starbucks/models/error_response_model.dart';
import 'package:redesign_starbucks/view/home/models/offer_response_model.dart';
import 'package:redesign_starbucks/view/home/service/home_service.dart';
import 'package:redesign_starbucks/widgets/snack_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './home.dart';

abstract class HomeViewModel extends State<Home> {
  // Add your state and logic here
  List<offerResponseDataModel> offerList = [];
  bool isLoading = false;
  late HomeService service;
  @override
  void initState() {
    super.initState();
    service = HomeService();
    getOffer();
  }

  Future<void> getOffer() async {
    try {
      changeLoading();
      final response = await service.getOffer();
      offerList.addAll(response.data!);
      // print(offerList);
      changeLoading();
    } on ErrorResponseModel catch (e) {
      SnackBarShow(context, e.message.toString());
      changeLoading();
    }
  }

  void changeLoading() => setState(() {
        isLoading = !isLoading;
      });
}
