import 'package:ai_social_flutter/common/routes/app_routes.dart';
import 'package:ai_social_flutter/modules/intro/views/ask_anything.dart';
import 'package:ai_social_flutter/modules/intro/views/ask_question_in_any_lang.dart';
import 'package:ai_social_flutter/modules/intro/views/intro_one.dart';
import 'package:ai_social_flutter/modules/intro/views/intro_two.dart';
import 'package:ai_social_flutter/modules/splash/views/splashscreen.dart';
import 'package:get/get.dart';

import '../../modules/intro/views/everyday_challenge.dart';

class AppPages{
  static final List<GetPage> pages=[
    GetPage(
      name: AppRoutes.splashScreen,
      page:() => const SplashScreen(),
    ),
    GetPage(
      name: AppRoutes.introScreenOne,
      page:() => const IntroductionScreenOne(),
    ),
    GetPage(
      name: AppRoutes.introScreenTwo,
      page:() => const IntroductionScreenTwo(),
    ),
    GetPage(
      name: AppRoutes.introScreenThree,
      page:() => const AskAnything(),
    ),
    GetPage(
      name: AppRoutes.everyDayChallenges,
      page:() => const EverydayChallenge(),
    ),
    GetPage(
      name: AppRoutes.askQuestInAnyLang,
      page:() => const AskQuestionInAnyLang(),
    ),
  ];
}