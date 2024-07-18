import 'package:ai_social_flutter/common/resources/colors.dart';
import 'package:ai_social_flutter/modules/intro/view_model/intro_one_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../common/routes/app_routes.dart';

class IntroductionScreenTwo extends StatelessWidget {
  const IntroductionScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final controller= Get.put(IntroOneViewModel());
    return Scaffold(
      backgroundColor: ColorManager.brandColor,
      body: SafeArea(
        child: Obx(() => controller.isLoading.value?const Center(child: CircularProgressIndicator(),):
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                ColorManager.introTwoGradientStart,
                ColorManager.introTwoGradientEnd,
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Chat\nwith\nAISocial',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: Get.width * .15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto'),
                  ),
                ),
                ListTile(
                  leading: SvgPicture.asset(
                    'assets/images/ic_ai_social_without_text.svg',
                    width: Get.width * .08,
                  ),
                  title: const Text('Hey AI Buddy Community',style: TextStyle(color: Colors.white),),
                ),
                ListTile(
                  leading:
                  SvgPicture.asset(
                    'assets/images/ic_ai_social_without_text.svg',
                    width: Get.width * .08,
                  ),
                  title: const Text('Chatbot Assistant powered by AI',style: TextStyle(color: Colors.white),),
                ),
                ListTile(
                  leading:
                  SvgPicture.asset(
                    'assets/images/ic_ai_social_without_text.svg',
                    width: Get.width * .08,
                  ),
                  title: const Text('Immediate Response',style: TextStyle(color: Colors.white),),
                ),
                ListTile(
                  leading:
                  SvgPicture.asset(
                    'assets/images/ic_ai_social_without_text.svg',
                    width: Get.width * .08,
                  ),
                  title: const Text('Infinite Opportunities',style: TextStyle(color: Colors.white),),
                ),
                ListTile(
                  leading:
                  SvgPicture.asset(
                    'assets/images/ic_ai_social_without_text.svg',
                    width: Get.width * .08,
                  ),
                  title: const Text('Tailored Prompts Aligned with Your Interests',style: TextStyle(color: Colors.white),),
                ),
                const SizedBox(
                  height: 20,
                ),
                 Center(child: Text('Powered by',style: TextStyle(color: Colors.white,fontSize: Get.width*.05),),),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: GestureDetector(
                      onTap: (){
                        Get.toNamed(AppRoutes.introScreenThree);
                      },child: Image.asset('assets/images/ic_intro_screen_two_img_one.png',width: Get.width * .6,))
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
