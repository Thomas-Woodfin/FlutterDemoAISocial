import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/resources/colors.dart';
import '../view_model/ai_chat_vm.dart';

class AiChatScreen extends StatelessWidget {
  const AiChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AiChatViewModel());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() => SafeArea(
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
                          'AISocial',
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
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 20, left: 5, right: 5),
                      child: Stack(
                        children: [
                          Column(
                          children: [
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: ColorManager.introTwoGradientStart,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(width: 5),
                                          Expanded(
                                            child: InkWell(
                                              onTap: () {
                                                controller.selectedGPTVersion.value = 1;
                                              },
                                              child: Container(
                                                height: Get.height * .045,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  color: controller.selectedGPTVersion.value == 1
                                                      ? ColorManager.chatGPTVersionSelectionColor
                                                      : null,
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(5),
                                                  child: Center(
                                                    child: Text(
                                                      'GPT 3.5',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: Get.width * .03,
                                                        fontWeight: FontWeight.bold,
                                                        fontFamily: 'Roboto',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Expanded(
                                            child: InkWell(
                                              onTap: () {
                                                controller.selectedGPTVersion.value = 2;
                                              },
                                              child: Container(
                                                height: Get.height * .045,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  color: controller.selectedGPTVersion.value == 2
                                                      ? ColorManager.chatGPTVersionSelectionColor
                                                      : null,
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(5),
                                                  child: Center(
                                                    child: Text(
                                                      'GPT 4',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: Get.width * .03,
                                                        fontWeight: FontWeight.bold,
                                                        fontFamily: 'Roboto',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 5),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: ColorManager.introTwoGradientStart),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8, bottom: 8, left: 10, right: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 3.0, bottom: 3.0),
                                          child: Image.asset(
                                            'assets/images/ic_advertise.png',
                                            width: Get.width * .1,
                                            height: Get.height * .03,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Advertise',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: Get.width * .03,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Roboto'),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: ColorManager.introTwoGradientStart),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 3.0,
                                        bottom: 3.0,
                                        left: 10,
                                        right: 10),
                                    child: Image.asset(
                                      'assets/images/ic_chat_language.png',
                                      width: Get.width * .1,
                                      height: Get.height * .05,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                          Positioned(
                            left: Get.width*.25,
                            child: Container(
                              decoration: BoxDecoration(
                                color: ColorManager.chatGPTNewVersionBgColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 8,right: 8,top: 3,bottom: 3),
                                child: Text(
                                  'NEW',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                                itemBuilder: (_,index){
                                  return Text('$index');
                                }),
                          ),
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8,right: 8,top: 3,bottom: 3),
                              child: TextFormField(
                                controller: controller.textEditingController,
                                onChanged: (value) {
                                  // if (value.isNotEmpty) {
                                  //   controller.isFiltering.value = true;
                                  //   controller.filteredListOfChats =
                                  //       controller.listOfChats.where((chat) {
                                  //         return chat
                                  //             .toLowerCase()
                                  //             .contains(value.toLowerCase());
                                  //       }).toList();
                                  //   controller.isFiltering.value = false;
                                  // }
                                  debugPrint(value);
                                },
                                decoration: InputDecoration(
                                  // prefixIcon: Padding(
                                  //   padding: const EdgeInsets.all(8.0),
                                  //   child: Image.asset(
                                  //     'assets/images/ic_search_icon.png',
                                  //     width: Get.width * 0.03,
                                  //   ),
                                  // ),
                                  // counter: const Text(''),
                                  // helperMaxLines: 20,
                                  // labelText: 'Input Text',
                                  hintText: 'Type to search',
                                  labelStyle: const TextStyle(color: Colors.black),
                                  focusColor: ColorManager.everyChallengeGradientEnd,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: ColorManager.everyChallengeGradientEnd,
                                          width: 2),
                                      borderRadius: BorderRadius.circular(8)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: ColorManager.everyChallengeGradientEnd,
                                          width: 2),
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                              ),
                            ),
                          ),
                        ]
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
