import 'package:flutter_demo_ai_social/common/resources/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_in_button/sign_in_button.dart';

import '../../../common/widgets/circular_button.dart';
import '../view_model/auth_vm.dart';

class ForgetPassScreen extends StatelessWidget {
  const ForgetPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthViewModel());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() => SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(children: [
                    Image.asset(
                      'assets/images/get_pro_access_topbar_1.png',
                    ),
                    Positioned(
                      top: Get.height * .03,
                      left: Get.height * .03,
                      child: Text(
                        'Recover your account',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: Get.width * .08,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto'),
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: Get.width - 40,
                    // decoration: BoxDecoration(
                    //     color: Colors.red,
                    //     borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      controller: controller.emailTextEditingController,
                      onChanged: (value) {
                        controller.typedText.value = value;
                        print(value);
                      },
                      maxLines: 1,
                      obscureText: controller.obscureText.value,
                      decoration: InputDecoration(
                        counter: const Text(''),
                        helperMaxLines: 20,
                        labelText: 'Email',
                        labelStyle: const TextStyle(color: Colors.black),
                        focusColor: ColorManager.brandColor,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: ColorManager.brandColor, width: 3),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: ColorManager.brandColor, width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const RoundedButton(title: 'Recover'),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
