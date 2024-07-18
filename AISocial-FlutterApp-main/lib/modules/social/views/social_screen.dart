import 'package:ai_social_flutter/common/resources/colors.dart';
import 'package:ai_social_flutter/modules/admin/views/admin_ai_buddy.dart';
import 'package:ai_social_flutter/modules/admin/views/admin_personal_ai.dart';
import 'package:ai_social_flutter/modules/people_i_chatted_with/views/people_i_chatted_with_screen.dart';
import 'package:ai_social_flutter/modules/profile/views/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widgets/rounded_btn_with_icon.dart';

class SocialScreen extends StatelessWidget {
  const SocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(PDFAiViewModel());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/get_pro_access_topbar_1.png',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      CupertinoIcons.left_chevron,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Social',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: Get.width * .05,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
              child: Container(
                width: Get.width * 1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 5, right: 5, bottom: 1, top: 0),
                          child: Container(
                              width: Get.width * 1,
                              height: Get.height * .1,
                              decoration: BoxDecoration(
                                  color: ColorManager.introTwoGradientStart,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  )),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Welcome',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: Get.width * .05,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'Roboto')),
                                  Text(' Thomas!',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: Get.width * .05,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Roboto')),
                                ],
                              )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          child: RoundedButtonWithIcon(
                            icon: 'assets/images/ic_myProfile.png',
                            title: 'My Profile',
                            bottomLeftCorner: 0,
                            bottomRightCorner: 0,
                          ),
                          onTap: (){
                            Get.to(()=> const ProfileScreen());
                          },
                        ),
                        RoundedButtonWithIcon(
                          icon: 'assets/images/ic_people.png',
                          title: 'People',
                          topLeftCorner: 0,
                          topRightCorner: 0,
                          bottomLeftCorner: 0,
                          bottomRightCorner: 0,
                        ),
                        InkWell(
                          onTap: (){
                            Get.to(const PeopleIChattedWithScreen());
                          },
                          child: RoundedButtonWithIcon(
                            icon: 'assets/images/ic_people_i_chatted.png',
                            title: 'People I Chatted With',
                            topLeftCorner: 0,
                            topRightCorner: 0,
                            bottomLeftCorner: 0,
                            bottomRightCorner: 0,
                          ),
                        ),
                        RoundedButtonWithIcon(
                          icon: 'assets/images/ic_chat_with_personal_ai.png',
                          title: 'Chat with Personal AI',
                          topLeftCorner: 0,
                          topRightCorner: 0,
                          bottomLeftCorner: 0,
                          bottomRightCorner: 0,
                        ),
                        RoundedButtonWithIcon(
                          icon: 'assets/images/ic_create_personal_ai.png',
                          title: 'Create Personal AI',
                          topLeftCorner: 0,
                          topRightCorner: 0,
                          bottomLeftCorner: 0,
                          bottomRightCorner: 0,
                        ),
                        RoundedButtonWithIcon(
                          icon:
                              'assets/images/ic_chat_with_historical_figure.png',
                          title:
                              'Chat with Historical Figures and Professionals: Ai Tab',
                          topLeftCorner: 0,
                          topRightCorner: 0,
                          bottomLeftCorner: 0,
                          bottomRightCorner: 0,
                        ),
                        GestureDetector(
                          child: RoundedButtonWithIcon(
                            icon: 'assets/images/ic_admin.png',
                            title: 'Admin',
                            topLeftCorner: 0,
                            topRightCorner: 0,
                            bottomLeftCorner: 0,
                            bottomRightCorner: 0,
                          ),
                          onTap: (){
                            Get.to(()=> const AdminPersonalAIScreen());
                          },
                        ),
                        GestureDetector(
                          child: RoundedButtonWithIcon(
                            icon: 'assets/images/ic_admin_ai_buddy.png',
                            title: 'Admin AI Buddy',
                            topLeftCorner: 0,
                            topRightCorner: 0,
                            bottomLeftCorner: 0,
                            bottomRightCorner: 0,
                          ),
                          onTap: (){
                            Get.to(()=> const AdminAIBuddy());
                          },
                        ),
                        RoundedButtonWithIcon(
                            icon: 'assets/images/ic_set_open_ai_key.png',
                            title: 'Set OpenAI Key',
                            bottomLeftCorner: 0,
                            bottomRightCorner: 0,
                            topLeftCorner: 0,
                            topRightCorner: 0),
                        RoundedButtonWithIcon(
                            icon: 'assets/images/ic_logout.png',
                            title: 'Logout',
                            topLeftCorner: 0,
                            topRightCorner: 0),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
