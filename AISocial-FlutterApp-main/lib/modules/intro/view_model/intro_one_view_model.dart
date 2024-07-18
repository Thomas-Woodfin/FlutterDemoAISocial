import 'dart:convert';
import 'package:ai_social_flutter/modules/intro/model/intro_screen_one_response_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class IntroOneViewModel extends GetxController{

  final _iresponse= IntroScreenOneResponseModel().obs;
  IntroScreenOneResponseModel get iResponse =>_iresponse.value;
  final isLoading=true.obs;

  @override
  void onInit() {
    loadJsonData();
    super.onInit();
  }

  Future<void> loadJsonData() async {
    String jsonString = await rootBundle.loadString('assets/scrapdata/intro_one_response.json');
    _iresponse.value = IntroScreenOneResponseModel.fromJson(json.decode(jsonString));
    isLoading(false);
  }
}