import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AiChatHistoryViewModel extends GetxController {
  final textEditingController = TextEditingController();

  List<String> listOfChats = [
    'After a long day at work, I like to relax with a good.',
    'Astonishingly, the magician made the rabbit',
    'Adventurous travelers often seek out remote',
    'Artistic expression can take many forms, from',
    'Apples are a healthy snack choice for a quick',
    'Ambitious individuals strive for success in their',
    'Anxiously, she waited for the exam results to be',
    'Astonishingly,Astronomy enthusiasts enjoy',
    'Alone in the forest, the explorer marveled at',
    'Animals in the wild exhibit fascinating behaviors',
    'After a long day at work, I like to relax with a good.',
    'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, whe',
  ];

  final isFiltering=false.obs;
  List<String> filteredListOfChats = [];

  @override
  void onInit() {
    filteredListOfChats = listOfChats;
    super.onInit();
  }
}
