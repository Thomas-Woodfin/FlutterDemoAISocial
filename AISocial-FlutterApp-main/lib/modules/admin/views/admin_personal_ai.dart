import 'dart:io';
import 'package:ai_social_flutter/modules/admin/view_model/admin_personal_ai_vm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/resources/colors.dart';
import '../../../common/widgets/custom_textfield.dart';

class AdminPersonalAIScreen extends GetView {
  const AdminPersonalAIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AdminPersonalAIViewModel());
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
                      'Admin Personal AI',
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 12,),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14,),
                          decoration: BoxDecoration(
                            color: ColorManager.introTwoGradientStart,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/admin_eye.png',
                                width: 16,
                                height: 16,
                              ),
                              const SizedBox(width: 10,),
                              Text(
                                'See All Personal AI',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Get.width * .04,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          padding: const EdgeInsets.all(12.0),
                          margin: const EdgeInsets.symmetric(
                            vertical: 20,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: ColorManager.introTwoGradientStart,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Obx(
                            () => controller.image.value.path == ''
                                ? Image.asset(
                                    'assets/images/person_default.png')
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(7.0),
                                    child: Image.file(
                                      File(controller.image.value.path ?? ''),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 12,),
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12,),
                            decoration: BoxDecoration(
                              color: ColorManager.introTwoGradientStart,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              'Upload Photo',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: Get.width * .04,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                          onTap: () async{
                            await controller.pickSingleImage();
                          },
                        ),
                        const SizedBox(height: 20,),
                        CustomTextFieldWidget(
                          controller: controller.firstNameEditingController,
                          hintText: 'First Name',
                          validator: (value){
                            return null;
                          },
                          obscurePassword: false,
                          suffixIcon: const SizedBox(),
                        ),
                        const SizedBox(height: 20,),
                        CustomTextFieldWidget(
                          controller: controller.lastNameEditingController,
                          hintText: 'Last Name',
                          validator: (value){
                            return null;
                          },
                          obscurePassword: false,
                          suffixIcon: const SizedBox(),
                        ),
                        const SizedBox(height: 20,),
                        CustomTextFieldWidget(
                          controller: controller.professionEditingController,
                          hintText: 'Profession',
                          validator: (value){
                            return null;
                          },
                          obscurePassword: false,
                          suffixIcon: const SizedBox(),
                        ),
                        const SizedBox(height: 20,),
                        CustomTextFieldWidget(
                          controller: controller.locationEditingController,
                          hintText: 'Location',
                          validator: (value){
                            return null;
                          },
                          obscurePassword: false,
                          suffixIcon: const SizedBox(),
                        ),
                        const SizedBox(height: 20,),
                        CustomTextFieldWidget(
                          controller: controller.promptEditingController,
                          hintText: 'Prompt. e.g. (Pretend you are Batman!)',
                          validator: (value){
                            return null;
                          },
                          obscurePassword: false,
                          suffixIcon: const SizedBox(),
                        ),
                        const SizedBox(height: 22,),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15,),
                          decoration: BoxDecoration(
                            color: ColorManager.introTwoGradientStart,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/create_personal_ai.png',
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(width: 10,),
                              Text(
                                'Create Personal AI',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Get.width * .04,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ],
                          ),
                        ),
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



