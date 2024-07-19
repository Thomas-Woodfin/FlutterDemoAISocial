import 'package:flutter_demo_ai_social/common/resources/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_in_button/sign_in_button.dart';

import '../../../common/widgets/circular_button.dart';
import '../view_model/auth_vm.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                        'Registration',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: Get.width * .15,
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
                      controller: controller.firstNameTextEditingController,
                      onChanged: (value) {
                        controller.typedText.value = value;
                        print(value);
                      },
                      maxLines: 1,
                      decoration: InputDecoration(
                        counter: const Text(''),
                        helperMaxLines: 20,
                        labelText: 'First Name',
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
                    height: 20,
                  ),
                  SizedBox(
                    width: Get.width - 40,
                    // decoration: BoxDecoration(
                    //     color: Colors.red,
                    //     borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      controller: controller.lastNameTextEditingController,
                      onChanged: (value) {
                        controller.typedText.value = value;
                        print(value);
                      },
                      maxLines: 1,
                      obscureText: controller.obscureText.value,
                      decoration: InputDecoration(
                        counter: const Text(''),
                        helperMaxLines: 20,
                        labelText: 'Last Name',
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
                    height: 20,
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
                    height: 20,
                  ),
                  SizedBox(
                    width: Get.width - 40,
                    // decoration: BoxDecoration(
                    //     color: Colors.red,
                    //     borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      controller: controller.passTextEditingController,
                      onChanged: (value) {
                        controller.typedText.value = value;
                        print(value);
                      },
                      maxLines: 1,
                      obscureText: controller.obscureText.value,
                      decoration: InputDecoration(
                        counter: const Text(''),
                        helperMaxLines: 20,
                        labelText: 'Password',
                        suffixIcon: controller.obscureText.value
                            ? InkWell(
                                onTap: () {
                                  controller.obscureText.value =
                                      !controller.obscureText.value;
                                },
                                child: Icon(
                                  CupertinoIcons.eye_slash_fill,
                                  color: ColorManager.brandColor,
                                ))
                            : InkWell(
                                onTap: () {
                                  controller.obscureText.value =
                                      !controller.obscureText.value;
                                },
                                child: Icon(
                                  CupertinoIcons.eye_fill,
                                  color: ColorManager.brandColor,
                                )),
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
                  const RoundedButton(title: 'Create Account'),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('or'),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: Get.width - 120,
                    child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: const RoundedButton(title: 'login')),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
