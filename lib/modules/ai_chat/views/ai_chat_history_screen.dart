import 'package:flutter_demo_ai_social/modules/ai_chat/views/ai_chat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/resources/colors.dart';
import '../view_model/ai_chat_history_vm.dart';

class AiHistoryScreen extends StatelessWidget {
  const AiHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AiChatHistoryViewModel());
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
                      'Chat History',
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
            Obx(
              () => Padding(
                padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
                child: Container(
                  width: Get.width * 1,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 12, bottom: 5, left: 12, right: 12),
                          child: TextFormField(
                            controller: controller.textEditingController,
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                controller.isFiltering.value = true;
                                controller.filteredListOfChats =
                                    controller.listOfChats.where((chat) {
                                  return chat
                                      .toLowerCase()
                                      .contains(value.toLowerCase());
                                }).toList();
                                controller.isFiltering.value = false;
                              }
                              debugPrint(value);
                            },
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/images/ic_search_icon.png',
                                  width: Get.width * 0.03,
                                ),
                              ),
                              // counter: const Text(''),
                              // helperMaxLines: 20,
                              // labelText: 'Input Text',
                              hintText: 'Type to search',
                              labelStyle: const TextStyle(color: Colors.black),
                              focusColor: ColorManager.searchBoxBorderColor,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorManager.searchBoxBorderColor,
                                      width: 2),
                                  borderRadius: BorderRadius.circular(8)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorManager.searchBoxBorderColor,
                                      width: 2),
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                        ),
                        controller.isFiltering.value
                            ? const CircularProgressIndicator()
                            : Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount:
                                          controller.filteredListOfChats.length,
                                      itemBuilder: (_, index) {
                                        return InkWell(
                                          onTap: () {
                                            Get.to(const AiChatScreen());
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                border: Border.all(
                                                  color: ColorManager
                                                      .chatHistoryItemBorderColor,
                                                  width: 0.5,
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(12),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                        child: Text(
                                                      controller
                                                              .filteredListOfChats[
                                                          index],
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    )),
                                                    const Icon(Icons
                                                        .arrow_right_outlined)
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
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
