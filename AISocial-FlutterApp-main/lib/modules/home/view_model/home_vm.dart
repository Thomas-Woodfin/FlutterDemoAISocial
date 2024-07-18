import 'package:ai_social_flutter/modules/home/views/get_pro_access_screen.dart';
import 'package:ai_social_flutter/modules/more_ai/views/more_ai_screen.dart';
import 'package:ai_social_flutter/modules/pdf_ai/views/pdf_ai_screen.dart';
import 'package:ai_social_flutter/modules/social/views/social_screen.dart';
import 'package:ai_social_flutter/modules/social_ai/views/social_ai_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../hey_ai_buddy/views/hey_ai_buddy_screen.dart';

class HomeViewModel extends GetxController {
  var currentIndex = 0.obs;

  void onTabTapped(int index) async {
    print('$index');
    currentIndex.value = index;
  }

  final List<Widget> children = [
    SocialAIScreen(),
    PDFAiScreen(),
    // SocialAIScreen(),
    SocialScreen(),
    HeyAiBuddyScreen(),
    MoreAiScreen(),
  ];
}
