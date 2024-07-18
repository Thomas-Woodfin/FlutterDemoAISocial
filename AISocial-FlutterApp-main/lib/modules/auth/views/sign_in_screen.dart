import 'package:ai_social_flutter/common/resources/colors.dart';
import 'package:ai_social_flutter/modules/auth/views/forget_pass_screen.dart';
import 'package:ai_social_flutter/modules/auth/views/sign_up_screen.dart';
import 'package:ai_social_flutter/modules/intro/views/intro_one.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_in_button/sign_in_button.dart';

import '../../../common/widgets/circular_button.dart';
import '../view_model/auth_vm.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthViewModel());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() => SafeArea(
            child: SingleChildScrollView(
              child: Form(
                key: controller.formKey,
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
                          'Login',
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
                        controller: controller.emailTextEditingController,
                        onChanged: (value) {
                          controller.typedText.value = value;
                          print(value);
                        },
                        maxLines: 1,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
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
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.red, width: 3),
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
                        autovalidateMode: AutovalidateMode.onUserInteraction,
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
                          errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 3),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width - 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Get.to(const ForgetPassScreen());
                            },
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(onTap:(){
                      Get.to(()=>IntroductionScreenOne());
                      // final isValid = controller.formKey.currentState!.validate();
                      // Get.focusScope!.unfocus();
                      //
                      // if (isValid) {
                      //   controller.loginAPI();
                      // } else {
                      //   print('formEmptyMessage');
                      // }
                      },child: const RoundedButton(title: 'Login')),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('or'),
                    const SizedBox(
                      height: 20,
                    ),
                    SignInButton(
                      Buttons.google,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: Get.width - 120,
                      child: InkWell(onTap:(){Get.to(SignUpScreen());},child: const RoundedButton(title: 'Register')),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
