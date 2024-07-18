import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PeopleIChattedWithViewModel extends GetxController {
  var typedText = ''.obs;
  final textEditingController=TextEditingController();
  final isFiltering=false.obs;


  @override
  void onInit() {
    super.onInit();
  }
}
