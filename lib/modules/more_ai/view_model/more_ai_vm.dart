import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoreAiViewModel extends GetxController {
  var typedText = ''.obs;
  final textEditingController=TextEditingController();
  final isFiltering=false.obs;


  @override
  void onInit() {
    super.onInit();
  }
}
