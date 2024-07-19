import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetProAccessViewModel extends GetxController {
  final selectedOption = 1.obs;
  List<String> slides = [];
  List<String> topSlides = [];
  var currentPageIndex = 0.obs;
  var isFreeTrialEnabled = true.obs;
  late PageController pageController;

  @override
  void onInit() {
    slides = getSlides();
    topSlides = getTopSlides();
    pageController = PageController(initialPage: currentPageIndex.value);
    super.onInit();
  }

  List<String> getSlides() {
    List<String> slides = <String>[];
    slides.add('assets/images/bg_hey_ai_buddy.png');
    slides.add('assets/images/bg_hey_ai_buddy_2.png');
    slides.add('assets/images/bg_hey_ai_buddy_3.png');
    slides.add('assets/images/bg_hey_ai_buddy_4.png');
    slides.add('assets/images/bg_hey_ai_buddy_5.png');
    return slides;
  }

  List<String> getTopSlides() {
    List<String> slides = <String>[];
    slides.add('assets/images/gpa_1.png');
    slides.add('assets/images/gpa_2.png');
    slides.add('assets/images/gpa_3.png');
    slides.add('assets/images/gpa_4.png');
    slides.add('assets/images/gpa_5.png');
    slides.add('assets/images/gpa_6.png');
    slides.add('assets/images/gpa_7.png');
    return slides;
  }

  void goToNextPage() {
    currentPageIndex.value++;
  }

  void goToPreviousPage() {
    currentPageIndex.value--;
  }
}
