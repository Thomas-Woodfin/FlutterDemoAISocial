import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widgets/rounded_btn_with_icon.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
                      Get.back();},
                    icon: const Icon(
                      CupertinoIcons.left_chevron,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Settings',
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
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        RoundedButtonWithIcon(),
                        const SizedBox(
                          height: 20,
                        ),
                        RoundedButtonWithIcon(
                          icon: 'assets/images/ic_fb.png',
                          title: 'Follow on Facebook',
                          bottomLeftCorner: 0,
                          bottomRightCorner: 0,
                        ),
                        RoundedButtonWithIcon(
                          icon: 'assets/images/ic_twitter.png',
                          title: 'Follow on Twitter',
                          topLeftCorner: 0,
                          topRightCorner: 0,
                          bottomLeftCorner: 0,
                          bottomRightCorner: 0,
                        ),
                        RoundedButtonWithIcon(
                          icon: 'assets/images/ic_reddit.png',
                          title: 'Follow on Reddit',
                          topLeftCorner: 0,
                          topRightCorner: 0,
                          bottomLeftCorner: 0,
                          bottomRightCorner: 0,
                        ),
                        RoundedButtonWithIcon(
                          icon: 'assets/images/ic_rateus.png',
                          title: 'Like us, Rate us?',
                          topLeftCorner: 0,
                          topRightCorner: 0,
                          bottomLeftCorner: 0,
                          bottomRightCorner: 0,
                        ),
                        RoundedButtonWithIcon(
                            icon: 'assets/images/ic_about.png',
                            title: 'About',
                            topLeftCorner: 0,
                            topRightCorner: 0),
                        const SizedBox(
                          height: 20,
                        ),
                        RoundedButtonWithIcon(
                            icon: 'assets/images/ic_email_support.png',
                            title: 'E-mail Support',
                            bottomLeftCorner: 0,
                            bottomRightCorner: 0),
                        RoundedButtonWithIcon(
                            icon: 'assets/images/ic_restore_purchase.png',
                            title: 'Restore Purchase',
                            topLeftCorner: 0,
                            topRightCorner: 0),
                        const SizedBox(
                          height: 20,
                        ),
                        RoundedButtonWithIcon(
                            icon: 'assets/images/ic_privacy_policy.png',
                            title: 'Privacy Policy',
                            bottomLeftCorner: 0,
                            bottomRightCorner: 0),
                        RoundedButtonWithIcon(
                            icon: 'assets/images/ic_terms_of_service.png',
                            title: 'Terms of Service',
                            bottomLeftCorner: 0,
                            bottomRightCorner: 0,
                            topLeftCorner: 0,
                            topRightCorner: 0),
                        RoundedButtonWithIcon(
                            icon: 'assets/images/ic_community_guideline.png',
                            title: 'Community Guideline',
                            bottomLeftCorner: 0,
                            bottomRightCorner: 0,
                            topLeftCorner: 0,
                            topRightCorner: 0),
                        RoundedButtonWithIcon(
                            icon: 'assets/images/ic_coupon.png',
                            title: 'Coupon',
                            topLeftCorner: 0,
                            topRightCorner: 0),
                        const SizedBox(height: 20,)
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
