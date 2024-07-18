import 'package:ai_social_flutter/common/resources/colors.dart';
import 'package:ai_social_flutter/modules/settings/views/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../ai_chat/views/ai_chat_history_screen.dart';

class SocialAIScreen extends StatelessWidget {
  const SocialAIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(PDFAiViewModel());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/bg_top_ai_social_tm.png',
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 60,),
                    Center(
                      child: Image.asset(
                        'assets/images/ic_ai_social_tm.png',
                        width: Get.width * .2,
                        height: Get.height * .1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(() => const SettingsScreen());
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Settings',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color:
                                          ColorManager.introTwoGradientStart),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Image.asset(
                                  'assets/images/ic_settings.png',
                                  width: Get.width * .1,
                                  height: Get.height * .05,
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'English',
                                style: TextStyle(
                                    color: Colors.white, fontFamily: 'Roboto'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: ColorManager.brandColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'Spanish',
                                style: TextStyle(
                                    color: Colors.white, fontFamily: 'Roboto'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 0, right: 35, bottom: 10),
                          child: Text(
                            'Chat AI Experts',
                            style: TextStyle(
                                color: ColorManager.introTwoGradientStart,
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
                          color: ColorManager.introTwoGradientStart,
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
                                    color: ColorManager.lightAsh,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Roboto'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            color: ColorManager.introTwoGradientStart,
                            height: Get.height * .14,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 35, bottom: 10),
                          child: Text(
                            'PDF Genius',
                            style: TextStyle(
                                color: ColorManager.introTwoGradientStart,
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
                          color: ColorManager.introTwoGradientStart,
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
                            color: ColorManager.introTwoGradientStart,
                            height: Get.height * .14,
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
                                    color: ColorManager.lightAsh,
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
                          padding: const EdgeInsets.only(
                              top: 20, right: 35, bottom: 10),
                          child: Text(
                            'Smart Scan',
                            style: TextStyle(
                                color: ColorManager.introTwoGradientStart,
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
                          color: ColorManager.introTwoGradientStart,
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
                                    color: ColorManager.introTwoGradientStart,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Roboto'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            color: ColorManager.introTwoGradientStart,
                            height: Get.height * .14,
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
                          padding: const EdgeInsets.only(
                              top: 20, left: 35, bottom: 10),
                          child: Text(
                            'AI Review',
                            style: TextStyle(
                                color: ColorManager.introTwoGradientStart,
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
                          color: ColorManager.introTwoGradientStart,
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
                            color: ColorManager.introTwoGradientStart,
                            height: Get.height * 0.15,
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
                                  color: ColorManager.introTwoGradientStart,
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
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorManager.brandColor),
                            child: const Padding(
                              padding: EdgeInsets.all(15),
                              child: Center(
                                child: Text(
                                  'Enter AI Here...',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20,),
                        Expanded(
                          child: InkWell(
                            onTap: (){
                              Get.to(const AiHistoryScreen());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ColorManager.brandColor),
                              child: const Padding(
                                padding: EdgeInsets.all(15),
                                child: Center(
                                  child: Text(
                                    'AI History',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
