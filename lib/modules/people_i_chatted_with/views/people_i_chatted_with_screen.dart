import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/resources/colors.dart';
import '../../../common/widgets/circular_button.dart';
import '../../../common/widgets/rounded_btn_with_icon.dart';
import '../view_model/people_i_chatted_with_vm.dart';

class PeopleIChattedWithScreen extends StatelessWidget {
  const PeopleIChattedWithScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PeopleIChattedWithViewModel());
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
                      'People I Chatted With',
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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                              contentPadding: const EdgeInsets.all(0),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/images/ic_search_icon.png',
                                  width: Get.width * 0.03,
                                ),
                              ),
                              hintText: 'Search... ',
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
                          height: 20,
                        ),
                        SizedBox(
                          height: Get.height*.7,
                          child: ListView.builder(itemBuilder: (_, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/img_eli_woodfin.png',
                                    width: 60,
                                    height: 60,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Elizabeth',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Roboto',
                                            fontSize: Get.width * .04,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text('Woodfin',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'Roboto',
                                              fontSize: Get.width * .04,
                                              fontWeight: FontWeight.w600)),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text('Denver',
                                          style: TextStyle(
                                              color: ColorManager
                                                  .peopleIChatterWithSubtitleTextColor,
                                              fontFamily: 'Roboto'))
                                    ],
                                  ),
                                  const Spacer(),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: Get.width * .27,
                                          decoration: BoxDecoration(
                                              color: ColorManager
                                                  .introTwoGradientStart,
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.all(Get.width * .02),
                                                child: Image.asset(
                                                  'assets/images/ic_visit_profile.png',
                                                  width: Get.width * 0.04,
                                                  height: Get.width * 0.04,
                                                ),
                                              ),
                                              Text('Visit Profile',
                                                  overflow: TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: Get.width * .03,
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: 'Roboto')),
                                            ],
                                          )),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                          width: Get.width * .27,
                                          decoration: BoxDecoration(
                                              color: ColorManager
                                                  .introTwoGradientStart,
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.all(Get.width * .02),
                                                child: Image.asset(
                                                  'assets/images/ic_chat.png',
                                                  width: Get.width * 0.04,
                                                  height: Get.width * 0.04,
                                                ),
                                              ),
                                              Text('Chat',
                                                  overflow: TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: Get.width * .03,
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: 'Roboto')),
                                            ],
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }),
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
