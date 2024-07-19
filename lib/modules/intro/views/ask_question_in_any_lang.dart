import 'package:flutter_demo_ai_social/common/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/routes/app_routes.dart';
import '../../home/views/home_screen.dart';

class AskQuestionInAnyLang extends StatelessWidget {
  const AskQuestionInAnyLang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorManager.brandColor,
      bottomNavigationBar: GestureDetector(
          onTap: () {
            Get.to(const HomeScreen());
          },
          child: Image.asset(
              'assets/images/bottom_bg_ask_questions_in_any_lang.png')),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/top_bg_ask_questions_in_any_lang.png'),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text('Ask Questions\nIn Any Language',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Get.width * .1,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto')),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                    'Feel free to chat in the language of your choice—there are no language restrictions! ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Get.width * .05,
                        fontFamily: 'Roboto')),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorManager.introTwoGradientStart,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/images/ic_dutch.png',
                              height: Get.height * .05,
                              width: Get.width * .05,
                            ),
                          ),
                          Text('Dutch',
                              style: TextStyle(
                                  color: ColorManager.nextBtnBgColor,
                                  fontSize: Get.width * .05,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto'))
                        ],
                      ),
                      const Text(
                        'Voel je vrij om te chatten in de taal van jouw keuze',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorManager.introTwoGradientStart,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Irish',
                              style: TextStyle(
                                  color: ColorManager.nextBtnBgColor,
                                  fontSize: Get.width * .05,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto')),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/images/ic_irish.png',
                              height: Get.height * .05,
                              width: Get.width * .05,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                      const Text(
                        'Thig leat comhrá a dhéanamh i do rogha teanga',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorManager.introTwoGradientStart,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/images/ic_french.png',
                              height: Get.height * .05,
                              width: Get.width * .05,
                            ),
                          ),
                          Text('French',
                              style: TextStyle(
                                  color: ColorManager.nextBtnBgColor,
                                  fontSize: Get.width * .05,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto'))
                        ],
                      ),
                      const Text(
                        'N\'hésitez pas à discuter dans la langue de votre',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorManager.introTwoGradientStart,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Italian',
                              style: TextStyle(
                                  color: ColorManager.nextBtnBgColor,
                                  fontSize: Get.width * .05,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto')),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/images/ic_italian.png',
                              height: Get.height * .05,
                              width: Get.width * .05,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                      const Text(
                        'Sentiti libero di chattare nella lingua che preferisci',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
