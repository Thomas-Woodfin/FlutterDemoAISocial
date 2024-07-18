import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthViewModel extends GetxController {
  final formKey=GlobalKey<FormState>();
  var typedText = ''.obs;
  var obscureText = true.obs;
  final firstNameTextEditingController=TextEditingController();
  final lastNameTextEditingController=TextEditingController();
  final emailTextEditingController=TextEditingController();
  final passTextEditingController=TextEditingController();

  void loginAPI(){

  }
}
