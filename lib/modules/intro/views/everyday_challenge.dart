import 'package:flutter_demo_ai_social/common/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/routes/app_routes.dart';

class EverydayChallenge extends StatelessWidget {
  const EverydayChallenge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorManager.brandColor,
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ColorManager.introTwoGradientStart,
              ColorManager.everyChallengeGradientEnd,
            ],
          ),
        ),
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Everyday\nChallenges?',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: Get.width * .14,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto'),
              ),
              Text(
                'get life hacks\ntailored for you',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: ColorManager.ash,
                    fontSize: Get.width * .11,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, right: 35, bottom: 10),
                    child: Text(
                      'Chat AI Experts',
                      style: TextStyle(
                          color: ColorManager.ash,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.askQuestInAnyLang);
                },
                child: Container(
                  width: Get.width - 20 * 2,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Ever wanted to chat economics with Einstein or philosophy with Plato? Now you can! Introducing \'Chat AI Expert\'—where your dream convos come to life!',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: ColorManager.ash,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        color: Colors.white,
                        height: Get.height * .17,
                        width: 2,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        'assets/images/ic_ai_logo.png',
                        width: Get.width * .2,
                        height: Get.height * .1,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 35, bottom: 10),
                    child: Text(
                      'PDF Genius',
                      style: TextStyle(
                          color: ColorManager.ash,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                ],
              ),
              Container(
                width: Get.width - 20 * 2,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      'assets/images/ic_pdf_genius.png',
                      width: Get.width * .2,
                      height: Get.height * .1,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      color: Colors.white,
                      height: Get.height * .17,
                      width: 2,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'This name conveys the app\'s ability to process and analyze PDF files quickly and accurately, using advanced AI algorithms and machine learning techniques.',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: ColorManager.ash,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, right: 35, bottom: 10),
                    child: Text(
                      'Smart Scan',
                      style: TextStyle(
                          color: ColorManager.ash,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                ],
              ),
              Container(
                width: Get.width - 20 * 2,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'This name highlights the app\'s intelligent scanning capabilities, which enable users to capture and analyze text and images from PDFs using ',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: ColorManager.ash,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      color: Colors.white,
                      height: Get.height * .17,
                      width: 2,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      'assets/images/ic_smart_scan.png',
                      width: Get.width * 0.2,
                      height: Get.height * 0.1,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 35, bottom: 10),
                    child: Text(
                      'AI Review',
                      style: TextStyle(
                          color: ColorManager.ash,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                ],
              ),
              Container(
                width: Get.width - 20 * 2,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      'assets/images/ic_ai_review.png',
                      width: Get.width * 0.2,
                      height: Get.height * 0.1,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      color: Colors.white,
                      height: Get.height * 0.19,
                      width: 2,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      // Use Flexible here
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'This name emphasizes the app\'s core purpose of providing AI-powered evaluations and reviews of PDF documents, while also conveying a sense of innovation and cutting-edge technology.',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorManager.ash,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
