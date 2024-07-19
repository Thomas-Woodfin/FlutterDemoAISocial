import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/widgets/circular_button.dart';
import '../view_model/more_ai_vm.dart';

class MoreAiScreen extends StatelessWidget {
  const MoreAiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MoreAiViewModel());
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
                      'More AIs',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: Get.width * .05,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto'),
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
                child: const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        RoundedButton(
                            borderRadius:10,
                            icon: 'assets/images/ic_ai_img_generator.png',
                            title: 'AI Image Generator'),
                        SizedBox(height: 10,),
                        RoundedButton(
                            borderRadius:10,
                            icon: 'assets/images/ic_ai_resume.png',
                            title: 'AI Resume'),
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
