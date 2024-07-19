import 'package:flutter_demo_ai_social/common/resources/global_data.dart';
import 'package:flutter_demo_ai_social/modules/ai_chat/views/ai_chat_screen.dart';
import 'package:flutter_demo_ai_social/modules/hey_ai_buddy/view_model/hey_ai_buddy_vm.dart';
import 'package:flutter_demo_ai_social/modules/hey_ai_buddy/views/create_hey_ai_buddy_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/resources/colors.dart';
import '../../ai_chat/views/chat_with_ai_character_screen.dart';

class HeyAiBuddyScreen extends StatelessWidget {
  const HeyAiBuddyScreen({super.key});

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
                      'Hey AI Buddy',
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Get.height * .05,
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: TextFormField(
                                    controller:
                                        controller.textEditingController,
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
                                      contentPadding: EdgeInsets.all(0),
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          'assets/images/ic_search_icon.png',
                                          width: Get.width * 0.03,
                                        ),
                                      ),
                                      hintText: 'Search Characters ',
                                      hintStyle:
                                          TextStyle(fontSize: Get.width * .035),
                                      labelStyle:
                                          const TextStyle(color: Colors.black),
                                      focusColor:
                                          ColorManager.introTwoGradientStart,
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: ColorManager
                                                  .introTwoGradientStart,
                                              width: 1),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: ColorManager
                                                  .introTwoGradientStart,
                                              width: 1),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Get.to(CreateHeyAiBuddyScreen());
                                  },
                                  child: Container(
                                    width: Get.width * .3,
                                    decoration: BoxDecoration(
                                        color: ColorManager.createBtnBgColor,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/ic_create_plus.png',
                                          width: Get.width * 0.05,
                                          height: Get.height * 0.05,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text('Create',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: Get.width * .04,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Roboto')),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text('Continue chatting',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Get.width * .05,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto')),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        ///First Row of continue chatting
                        SizedBox(
                          height: 167,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.continueChatting.length,
                              itemBuilder: (_, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  child: Container(
                                    width: Get.width * .35,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      boxShadow: [
                                        BoxShadow(
                                          color: ColorManager
                                              .continueChattingItemBorderColor,
                                          blurRadius: 0.01,
                                          offset: const Offset(
                                              0, 0.01), // Shadow position
                                        ),
                                      ],
                                    ),
                                    // decoration: BoxDecoration(
                                    //     color: Colors.white,
                                    //     borderRadius: BorderRadius.circular(8),
                                    //     border: Border.all(
                                    //         color: ColorManager
                                    //             .continueChattingItemBorderColor,
                                    //         width: 0.5)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            controller
                                                .continueChatting[index].name,
                                            width: Get.width * .3,
                                            fit: BoxFit.fitHeight,
                                          ),
                                          Spacer(),
                                          Text(
                                            controller
                                                .continueChatting[index].title,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: Get.height * .02,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Roboto'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                        const SizedBox(
                          height: 5,
                        ),

                        ///Second Row of continue chatting
                        // SizedBox(
                        //   height: 60,
                        //   child: ListView.builder(
                        //       scrollDirection: Axis.horizontal,
                        //       itemCount:
                        //           controller.continueChattingSecondRow.length,
                        //       itemBuilder: (_, index) {
                        //         return Padding(
                        //           padding: const EdgeInsets.symmetric(
                        //               horizontal: 8, vertical: 5),
                        //           child: Container(
                        //             decoration: BoxDecoration(
                        //                 color: ColorManager.createBtnBgColor,
                        //                 borderRadius: BorderRadius.circular(8),
                        //                 border: Border.all(
                        //                     color: ColorManager
                        //                         .continueChattingItemBorderColor,
                        //                     width: 0.5)),
                        //             child: Padding(
                        //               padding: const EdgeInsets.symmetric(
                        //                   vertical: 8.0, horizontal: 16),
                        //               child: Row(
                        //                 children: [
                        //                   Image.asset(
                        //                     controller
                        //                         .continueChattingSecondRow[
                        //                             index]
                        //                         .name,
                        //                     width: Get.width * .05,
                        //                     height: Get.width * .05,
                        //                   ),
                        //                   const SizedBox(
                        //                     width: 10,
                        //                   ),
                        //                   Text(
                        //                     controller
                        //                         .continueChattingSecondRow[
                        //                             index]
                        //                         .title,
                        //                     maxLines: 1,
                        //                     overflow: TextOverflow.ellipsis,
                        //                     style: TextStyle(
                        //                         color: Colors.white,
                        //                         fontSize: Get.width * .04,
                        //                         fontWeight: FontWeight.bold,
                        //                         fontFamily: 'Roboto'),
                        //                   ),
                        //                 ],
                        //               ),
                        //             ),
                        //           ),
                        //         );
                        //       }),
                        // ),
                        SizedBox(
                          height: 60,
                          child: StreamBuilder(
                            stream: FirebaseFirestore.instance
                                .collection("AllAIBuddyCategories")
                                .snapshots(),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                    child: CircularProgressIndicator());
                              } else if (!snapshot.hasData) {
                                return const Text('No data available');
                              } else {
                                var items = snapshot.data?.docs;
                                return ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: items!.length,
                                    itemBuilder: (_, index) {
                                      return Obx(() => Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 5),
                                            child: GestureDetector(
                                              onTap: () {
                                                controller.selectedCategoryName
                                                    .value = items[index]
                                                        ['category']
                                                    .toString();
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: controller.selectedCategoryName
                                                                .toLowerCase() ==
                                                            items[index]['category']
                                                                .toString()
                                                                .toLowerCase()
                                                        ? ColorManager
                                                            .createBtnBgColor
                                                        : ColorManager.ash,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                        color: controller
                                                                    .selectedCategoryName
                                                                    .toLowerCase() ==
                                                                items[index]['category']
                                                                    .toString()
                                                                    .toLowerCase()
                                                            ? ColorManager
                                                                .continueChattingItemBorderColor
                                                            : ColorManager.ash,
                                                        width: 0.5)),
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 8.0,
                                                      horizontal: 16),
                                                  child: Row(
                                                    children: [
                                                      CachedNetworkImage(
                                                        width: Get.width * .05,
                                                        height: Get.width * .05,
                                                        imageUrl: items[index]
                                                            ['imageURL'],
                                                        placeholder: (context,
                                                                url) =>
                                                            CircularProgressIndicator(),
                                                        errorWidget: (context,
                                                                url, error) =>
                                                            Icon(Icons.error),
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        items[index]
                                                            ['category'],
                                                        maxLines: 1,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                            color: controller
                                                                        .selectedCategoryName
                                                                        .toLowerCase() ==
                                                                    items[index]
                                                                            [
                                                                            'category']
                                                                        .toString()
                                                                        .toLowerCase()
                                                                ? Colors.white
                                                                : Colors.black,
                                                            fontSize:
                                                                Get.width * .04,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontFamily:
                                                                'Roboto'),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ));
                                    });
                              }
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),

                        ///Third Row of continue chatting
                        SizedBox(
                          height: 280,
                          child: StreamBuilder(
                            stream: FirebaseFirestore.instance
                                .collection("AIBuddy")
                                .snapshots(),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                    child: CircularProgressIndicator());
                              } else if (!snapshot.hasData) {
                                return const Text('No data available');
                              } else {
                                var items = snapshot.data?.docs;
                                return ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: items!.length,
                                    itemBuilder: (_, index) {
                                      return Obx(() => controller
                                                  .selectedCategoryName.value
                                                  .toLowerCase() ==
                                              items[index]['selectedCategory']
                                                  .toString()
                                                  .toLowerCase()
                                          ? Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8,
                                                      vertical: 5),
                                              child: GestureDetector(
                                                onTap: () {
                                                  userNameGlobalData.value =
                                                      items[index]['name'];
                                                  Get.to(
                                                      ChatWithAiCharacterScreen());
                                                },
                                                child: Container(
                                                  width: 170,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: ColorManager
                                                            .continueChattingItemBorderColor,
                                                        blurRadius: 0.01,
                                                        offset: const Offset(0,
                                                            0.01), // Shadow position
                                                      ),
                                                    ],
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Stack(
                                                          children: [
                                                            SizedBox(
                                                              height: 155,
                                                              // fit: BoxFit.fill,
                                                              child: Center(
                                                                child:
                                                                    CachedNetworkImage(
                                                                  fit: BoxFit
                                                                      .fitWidth,
                                                                  imageUrl: items[
                                                                          index]
                                                                      [
                                                                      'profileImageURL'],
                                                                  placeholder: (context,
                                                                          url) =>
                                                                      Center(
                                                                          child:
                                                                              CircularProgressIndicator()),
                                                                  errorWidget: (context,
                                                                          url,
                                                                          error) =>
                                                                      Icon(Icons
                                                                          .error),
                                                                ),
                                                              ),
                                                            ),
                                                            Positioned(
                                                              top: Get.height *
                                                                  .005,
                                                              right: Get.width *
                                                                  .01,
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/ic_open_eye.png',
                                                                width:
                                                                    Get.width *
                                                                        .08,
                                                              ),
                                                            ),
                                                            Positioned(
                                                              top: Get.height *
                                                                  .055,
                                                              right: Get.width *
                                                                  .01,
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/ic_close_eye.png',
                                                                width:
                                                                    Get.width *
                                                                        .08,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                          height: 10,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 8.0),
                                                          child: Text(
                                                            items[index]
                                                                ['name'],
                                                            maxLines: 1,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize:
                                                                    Get.width *
                                                                        .04,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    'Roboto'),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 8.0),
                                                          child: Text(
                                                            items[index]
                                                                ['greeting'],
                                                            maxLines: 2,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: TextStyle(
                                                                color: ColorManager
                                                                    .continueChattingItemSubTitleColor,
                                                                fontSize:
                                                                    Get.width *
                                                                        .035,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontFamily:
                                                                    'Roboto'),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 8.0),
                                                          child: Text(
                                                            "@${items[index]['creatorName']}",
                                                            maxLines: 1,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize:
                                                                    Get.width *
                                                                        .035,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontFamily:
                                                                    'Roboto'),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Image.asset(
                                                              'assets/images/ic_message.png',
                                                              width: Get.width *
                                                                  .03,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          8.0),
                                                              child: Text(
                                                                "${items[index]['interactionCount']}",
                                                                maxLines: 1,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: TextStyle(
                                                                    color: ColorManager
                                                                        .continueChattingItemSubTitleColor,
                                                                    fontSize:
                                                                        Get.width *
                                                                            .02,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontFamily:
                                                                        'Roboto'),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          : SizedBox());
                                    });
                              }
                            },
                          ),
                        ),
                        // SizedBox(
                        //   height: 280,
                        //   child: ListView.builder(
                        //       scrollDirection: Axis.horizontal,
                        //       itemCount:
                        //           controller.continueChattingThirdRow.length,
                        //       itemBuilder: (_, index) {
                        //         return Padding(
                        //           padding: const EdgeInsets.symmetric(
                        //               horizontal: 8, vertical: 5),
                        //           child: Container(
                        //             width: 170,
                        //             decoration: BoxDecoration(
                        //               color: Colors.white,
                        //               borderRadius: BorderRadius.circular(18),
                        //               boxShadow: [
                        //                 BoxShadow(
                        //                   color: ColorManager
                        //                       .continueChattingItemBorderColor,
                        //                   blurRadius: 0.01,
                        //                   offset: const Offset(
                        //                       0, 0.01), // Shadow position
                        //                 ),
                        //               ],
                        //             ),
                        //             child: Padding(
                        //               padding: const EdgeInsets.all(8.0),
                        //               child: Column(
                        //                 crossAxisAlignment:
                        //                     CrossAxisAlignment.start,
                        //                 children: [
                        //                   Stack(
                        //                     children: [
                        //                       Image.asset(
                        //                         controller
                        //                             .continueChattingThirdRow[
                        //                                 index]
                        //                             .name,
                        //                         height: 155,
                        //                         fit: BoxFit.fitWidth,
                        //                       ),
                        //                       Positioned(
                        //                         top: Get.height * .005,
                        //                         right: Get.width * .01,
                        //                         child: Image.asset(
                        //                           'assets/images/ic_open_eye.png',
                        //                           width: Get.width * .08,
                        //                         ),
                        //                       ),
                        //                       Positioned(
                        //                         top: Get.height * .055,
                        //                         right: Get.width * .01,
                        //                         child: Image.asset(
                        //                           'assets/images/ic_close_eye.png',
                        //                           width: Get.width * .08,
                        //                         ),
                        //                       )
                        //                     ],
                        //                   ),
                        //                   const SizedBox(
                        //                     height: 10,
                        //                   ),
                        //                   Padding(
                        //                     padding: const EdgeInsets.only(
                        //                         left: 8.0),
                        //                     child: Text(
                        //                       controller
                        //                           .continueChattingThirdRow[
                        //                               index]
                        //                           .title,
                        //                       maxLines: 1,
                        //                       overflow: TextOverflow.ellipsis,
                        //                       style: TextStyle(
                        //                           color: Colors.black,
                        //                           fontSize: Get.width * .04,
                        //                           fontWeight: FontWeight.bold,
                        //                           fontFamily: 'Roboto'),
                        //                     ),
                        //                   ),
                        //                   const SizedBox(
                        //                     height: 5,
                        //                   ),
                        //                   Padding(
                        //                     padding: const EdgeInsets.only(
                        //                         left: 8.0),
                        //                     child: Text(
                        //                       'I am Megumin, an Arch Wizard!',
                        //                       maxLines: 2,
                        //                       overflow: TextOverflow.ellipsis,
                        //                       style: TextStyle(
                        //                           color: ColorManager
                        //                               .continueChattingItemSubTitleColor,
                        //                           fontSize: Get.width * .035,
                        //                           fontWeight: FontWeight.w400,
                        //                           fontFamily: 'Roboto'),
                        //                     ),
                        //                   ),
                        //                   const SizedBox(
                        //                     height: 5,
                        //                   ),
                        //                   Padding(
                        //                     padding: const EdgeInsets.only(
                        //                         left: 8.0),
                        //                     child: Text(
                        //                       '@thomas',
                        //                       maxLines: 1,
                        //                       overflow: TextOverflow.ellipsis,
                        //                       style: TextStyle(
                        //                           color: Colors.black,
                        //                           fontSize: Get.width * .035,
                        //                           fontWeight: FontWeight.w400,
                        //                           fontFamily: 'Roboto'),
                        //                     ),
                        //                   ),
                        //                   Row(
                        //                     mainAxisAlignment:
                        //                         MainAxisAlignment.end,
                        //                     children: [
                        //                       Image.asset(
                        //                         'assets/images/ic_message.png',
                        //                         width: Get.width * .03,
                        //                       ),
                        //                       Padding(
                        //                         padding:
                        //                             const EdgeInsets.symmetric(
                        //                                 horizontal: 8.0),
                        //                         child: Text(
                        //                           '24.2m',
                        //                           maxLines: 1,
                        //                           overflow:
                        //                               TextOverflow.ellipsis,
                        //                           style: TextStyle(
                        //                               color: ColorManager
                        //                                   .continueChattingItemSubTitleColor,
                        //                               fontSize: Get.width * .02,
                        //                               fontWeight:
                        //                                   FontWeight.w400,
                        //                               fontFamily: 'Roboto'),
                        //                         ),
                        //                       ),
                        //                     ],
                        //                   ),
                        //                 ],
                        //               ),
                        //             ),
                        //           ),
                        //         );
                        //       }),
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text('Recommended',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Get.width * .04,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto')),
                        ),
                        const SizedBox(
                          height: 5,
                        ),

                        ///Fourth Row of continue chatting
                        SizedBox(
                          height: 280,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount:
                                  controller.continueChattingFourthRow.length,
                              itemBuilder: (_, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  child: Container(
                                    width: 170,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(18),
                                      boxShadow: [
                                        BoxShadow(
                                          color: ColorManager
                                              .continueChattingItemBorderColor,
                                          blurRadius: 0.01,
                                          offset: const Offset(
                                              0, 0.01), // Shadow position
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Stack(
                                            children: [
                                              Image.asset(
                                                controller
                                                    .continueChattingFourthRow[
                                                        index]
                                                    .name,
                                                height: 155,
                                                fit: BoxFit.fitWidth,
                                              ),
                                              Positioned(
                                                top: Get.height * .005,
                                                right: Get.width * .01,
                                                child: Image.asset(
                                                  'assets/images/ic_open_eye.png',
                                                  width: Get.width * .08,
                                                ),
                                              ),
                                              Positioned(
                                                top: Get.height * .055,
                                                right: Get.width * .01,
                                                child: Image.asset(
                                                  'assets/images/ic_close_eye.png',
                                                  width: Get.width * .08,
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              controller
                                                  .continueChattingFourthRow[
                                                      index]
                                                  .title,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: Get.width * .04,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Roboto'),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              'Join me in a cyberpunk avdenture',
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: ColorManager
                                                      .continueChattingItemSubTitleColor,
                                                  fontSize: Get.width * .035,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Roboto'),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              '@wyant',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: Get.width * .035,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Roboto'),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Image.asset(
                                                'assets/images/ic_message.png',
                                                width: Get.width * .03,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0),
                                                child: Text(
                                                  '30.2m',
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: ColorManager
                                                          .continueChattingItemSubTitleColor,
                                                      fontSize: Get.width * .02,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: 'Roboto'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
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
