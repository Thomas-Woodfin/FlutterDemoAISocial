import 'package:flutter_demo_ai_social/modules/hey_ai_buddy/view_model/hey_ai_buddy_vm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/resources/colors.dart';
import '../../../common/widgets/circular_button.dart';

class CreateHeyAiBuddyScreen extends StatelessWidget {
  const CreateHeyAiBuddyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HeyAiBuddyViewModel());
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
                      'Create Hey AI Buddy',
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: ColorManager.introTwoGradientStart,
                                  width: 2),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(25),
                            child: Image.asset(
                              'assets/images/ic_photo_upload.png',
                              width: Get.width * 0.15,
                              height: Get.width * 0.15,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                            width: Get.width - 130,
                            child: const RoundedButton(
                              titleFontSize: .04,
                              title: 'Upload Photo',
                              verticalPadding: 10,
                              borderRadius: 10,
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: TextFormField(
                            controller: controller.textEditingController,
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                controller.isFiltering.value = true;
                                // controller.filteredListOfChats =
                                //     controller.listOfChats.where((chat) {
                                //       return chat
                                //           .toLowerCase()
                                //           .contains(value.toLowerCase());
                                //     }).toList();
                                controller.isFiltering.value = false;
                              }
                              debugPrint(value);
                            },
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              hintText:
                                  'The name can include first and last names.',
                              hintStyle: TextStyle(fontSize: Get.width * .035),
                              labelStyle: const TextStyle(color: Colors.black),
                              focusColor: ColorManager.introTwoGradientStart,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorManager.introTwoGradientStart,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(8)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorManager.introTwoGradientStart,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Greeting',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: TextFormField(
                            controller: controller.textEditingController,
                            maxLines: 4,
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                controller.isFiltering.value = true;
                                // controller.filteredListOfChats =
                                //     controller.listOfChats.where((chat) {
                                //       return chat
                                //           .toLowerCase()
                                //           .contains(value.toLowerCase());
                                //     }).toList();
                                controller.isFiltering.value = false;
                              }
                              debugPrint(value);
                            },
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              hintText:
                                  'What would they say to introduce themselves? For example, "Friedrich Nietzsche" could say: "Hi! I am Friedrich Nietzsche. Would you like to discuss philosophy together?"',
                              hintStyle: TextStyle(fontSize: Get.width * .035),
                              labelStyle: const TextStyle(color: Colors.black),
                              focusColor: ColorManager.introTwoGradientStart,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorManager.introTwoGradientStart,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(8)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorManager.introTwoGradientStart,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Short Description',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: TextFormField(
                            controller: controller.textEditingController,
                            maxLines: 3,
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                controller.isFiltering.value = true;
                                // controller.filteredListOfChats =
                                //     controller.listOfChats.where((chat) {
                                //       return chat
                                //           .toLowerCase()
                                //           .contains(value.toLowerCase());
                                //     }).toList();
                                controller.isFiltering.value = false;
                              }
                              debugPrint(value);
                            },
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              hintText:
                                  'In just a few words, how would describe themselves?',
                              hintStyle: TextStyle(fontSize: Get.width * .035),
                              labelStyle: const TextStyle(color: Colors.black),
                              focusColor: ColorManager.introTwoGradientStart,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorManager.introTwoGradientStart,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(8)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorManager.introTwoGradientStart,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Long Description',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: TextFormField(
                            controller: controller.textEditingController,
                            maxLines: 3,
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                controller.isFiltering.value = true;
                                // controller.filteredListOfChats =
                                //     controller.listOfChats.where((chat) {
                                //       return chat
                                //           .toLowerCase()
                                //           .contains(value.toLowerCase());
                                //     }).toList();
                                controller.isFiltering.value = false;
                              }
                              debugPrint(value);
                            },
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              hintText:
                                  'In just a few words, how would describe themselves?',
                              hintStyle: TextStyle(fontSize: Get.width * .035),
                              labelStyle: const TextStyle(color: Colors.black),
                              focusColor: ColorManager.introTwoGradientStart,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorManager.introTwoGradientStart,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(8)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorManager.introTwoGradientStart,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Categories',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto'),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 5),
                          child: Row(
                            children: [
                              Text(
                                'Select up to 3 relevant tags or keywords.',
                                style: TextStyle(
                                    color: ColorManager.inputBoxHintTextColor,
                                    fontFamily: 'Roboto'),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: ColorManager.introTwoGradientStart,
                                  width: 1),
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Select',
                                  style: TextStyle(
                                      color: HexColor.fromHex('#383838'),
                                      fontFamily: 'Roboto'),
                                ),
                                const Icon(
                                    CupertinoIcons.arrowtriangle_down_fill,
                                    color: Colors.black,
                                    size: 15)
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: Get.width - 100,
                          child: const RoundedButton(
                            title: 'Create',
                          ),
                        ),
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
