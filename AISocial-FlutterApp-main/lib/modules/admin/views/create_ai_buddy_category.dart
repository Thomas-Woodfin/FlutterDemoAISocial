import 'dart:io';

import 'package:ai_social_flutter/common/widgets/custom_textfield.dart';
import 'package:ai_social_flutter/modules/admin/view_model/admin_personal_ai_vm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/resources/colors.dart';

class CreateAIBuddyCategory extends GetView{
  const CreateAIBuddyCategory({super.key});

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
                      'Admin AI Buddy',
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
                  padding: const EdgeInsets.only(top: 10, bottom: 20, left: 15, right: 15,),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
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
                        const SizedBox(
                          height: 5,
                        ),
                        GestureDetector(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 15,
                            ),
                            decoration: BoxDecoration(
                              color: ColorManager.introTwoGradientStart,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            alignment: Alignment.center,
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
                          onTap: () async {
                            await controller.pickSingleImage();
                          },
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        CustomTextFieldWidget(
                          controller: controller.categoryNameEditingController,
                          hintText: 'Write Category Name Here',
                          validator: (value){
                            return null;
                          },
                          obscurePassword: false,
                          suffixIcon: const SizedBox(),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 15,
                            ),
                            decoration: BoxDecoration(
                              color: ColorManager.introTwoGradientStart,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'Create',
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
                          onTap: () async {
                            await controller.pickSingleImage();
                          },
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: controller.categoryList.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index){
                            var item = controller.categoryList[index];
                            return Column(
                              children: [
                                const SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Image.asset(item['image'], height: 50, width: 50,),
                                    const SizedBox(width: 20,),
                                    Text(item['name'],
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5,),
                                const Divider(),
                              ],
                            );
                          },
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