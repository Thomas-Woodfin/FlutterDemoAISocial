import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AdminPersonalAIViewModel extends GetxController {

  TextEditingController firstNameEditingController = TextEditingController();
  TextEditingController lastNameEditingController = TextEditingController();
  TextEditingController professionEditingController = TextEditingController();
  TextEditingController locationEditingController = TextEditingController();
  TextEditingController promptEditingController = TextEditingController();

  // XFile? image;
  Rx<XFile> image = XFile('').obs;
  Future<void> pickSingleImage() async {
    XFile? result = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (result != null) {
      image.value = XFile(result.path);
      print('File picked: ${image.value.path}');
    } else {}
  }


  TextEditingController categoryNameEditingController = TextEditingController();
  List categoryList = [
    {
      "image": "assets/images/philosophy.png",
      "name": "Philosophy",
    },
    {
      "image": "assets/images/politics.png",
      "name": "Politics",
    },
    {
      "image": "assets/images/religion.png",
      "name": "Religion",
    },
    {
      "image": "assets/images/vtuber.png",
      "name": "VTuber",
    },
  ];

}