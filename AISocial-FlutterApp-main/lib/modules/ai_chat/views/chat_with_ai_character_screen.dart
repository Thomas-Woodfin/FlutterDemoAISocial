import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/resources/colors.dart';
import '../view_model/ai_chat_vm.dart';

class ChatWithAiCharacterScreen extends StatelessWidget {
  const ChatWithAiCharacterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AiChatViewModel());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: StreamBuilder(
            stream: controller.messageStream,
            builder: (context, snapshot) {
              if (snapshot.connectionState ==
                  ConnectionState.waiting) {
                return const Center(
                    child: CircularProgressIndicator());
              } else if (!snapshot.hasData) {
                return const Text('No data available');
              } else {
                var data = snapshot.data!.docs.first;
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(
                              CupertinoIcons.left_chevron,
                              color: Colors.black,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data['name'],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: Get.width * .05,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Roboto'),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/ic_message.png',
                                      width: Get.width * .03,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      child: Text(
                                        "${data['interactionCount']}",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: ColorManager
                                                .continueChattingItemSubTitleColor,
                                            fontSize: Get.width * .025,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Roboto'),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Created by ",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Roboto'),
                                    ),
                                    Text(
                                      "@${data['creatorName']}",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: Get.width * .03,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.italic,
                                          fontFamily: 'Roboto'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: Center(
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: CachedNetworkImageProvider(
                                        data['profileImageURL']),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 90,),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        width: Get.width,
                        color: ColorManager.everyChallengeGradientEnd,
                        child: const Text('Keep in mind that all dialogue spoken\nby characters is fictional!',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 150, left: 20, right: 20),
                      child: SizedBox(
                        width: Get.width * 1,
                        // decoration: BoxDecoration(
                        // color: Colors.red,
                        // borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 20, left: 5, right: 5),
                          child: Stack(children: [
                            Container(
                              height: Get.height,
                              margin: EdgeInsets.only(bottom: Get.height * .18),
                              child: ListView.builder(
                                  itemCount: 1,
                                  shrinkWrap: true,
                                  reverse: true,
                                  itemBuilder: (_, index) {
                                    return Container(
                                      margin: EdgeInsets.only(top: 10.0,bottom: 10.0,right: 10),
                                      child:
                                      index%2==0?Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                                            child: CircleAvatar(
                                              backgroundImage: NetworkImage(data['profileImageURL']),
                                              radius: 10,
                                            ),
                                          ),Expanded(
                                            child: Container(
                                              padding: const EdgeInsets.all(10.0),
                                              decoration:  BoxDecoration(
                                                color: ColorManager.singleChatBgTextColor,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(0.0),
                                                  topRight: Radius.circular(10.0),
                                                  bottomLeft: Radius.circular(10.0),
                                                  bottomRight: Radius.circular(10),
                                                ),
                                                // boxShadow: [
                                                //   BoxShadow(
                                                //     color: Colors.grey.withOpacity(0.5),
                                                //     spreadRadius: 1,
                                                //     blurRadius: 3,
                                                //     offset: Offset(0, 2),
                                                //   ),
                                                // ],
                                              ),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  // Text(
                                                  //   "Lorem ipsum dolor sit amet? Consectetuer!",
                                                  //   style: TextStyle(
                                                  //       fontSize: 16.0,
                                                  //       color: Colors.black
                                                  //   ),
                                                  // ),
                                                  AnimatedTextKit(
                                                    animatedTexts: [
                                                      TypewriterAnimatedText(
                                                        data['greeting'],
                                                        textStyle: const TextStyle(
                                                          fontSize: 16.0,
                                                            color: Colors.black
                                                        ),
                                                        speed: const Duration(milliseconds: 20),
                                                      ),
                                                    ],
                                                    totalRepeatCount: 1,
                                                  ),
                                                  SizedBox(height: 5.0),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        "14:30",
                                                        style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 12.0,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ):Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              margin: const EdgeInsets.only(left: 10.0),
                                              padding: const EdgeInsets.all(10.0),
                                              decoration:  BoxDecoration(
                                                color: ColorManager.singleChatBgTextColor,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10.0),
                                                  topRight: Radius.circular(0.0),
                                                  bottomLeft: Radius.circular(10.0),
                                                  bottomRight: Radius.circular(10),
                                                ),
                                              ),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    "Lorem ipsum dolor sit amet? Consectetuer!",
                                                    style: TextStyle(
                                                        fontSize: 16.0,
                                                        color: Colors.black
                                                    ),
                                                  ),
                                                  SizedBox(height: 5.0),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        "14:30",
                                                        style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 12.0,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 10.0),
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage('assets/images/ic_user_default.jpg'),
                                              radius: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                            Positioned(
                              right: 10,
                              bottom: Get.height*.12,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '${controller.typedText.value.length}/3000',
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(width: 10,),
                                  InkWell(
                                    onTap: () {
                                      print('Output Language clicked');
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Image.asset(
                                              'assets/images/ic_output_language.png',
                                              width: Get.width * .04,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Text(
                                              'Output Language',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Obx(() => Positioned(
                              left: 0,
                              right: 0,
                              // bottom: MediaQuery.of(context).viewInsets.bottom,
                              bottom: 0,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 8, top: 3, bottom: 3),
                                child: Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: ColorManager.brandColor,width: 2),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            controller: controller.messageSendingTextEditingController,
                                            onChanged: (value) {
                                              controller.typedText.value = value;
                                              print(value);
                                            },
                                            maxLines: 3,
                                            decoration: InputDecoration(
                                              hintText: '',
                                              labelStyle:
                                              const TextStyle(color: Colors.black),
                                              border: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                        controller.typedText.value.isNotEmpty?IconButton(
                                          icon: Icon(Icons.send,color: ColorManager.brandColor,),
                                          onPressed: () {
                                            // Handle camera button press
                                          },
                                        ):SizedBox(),
                                        controller.typedText.value.isNotEmpty?SizedBox():IconButton(
                                          icon: Image.asset('assets/images/ic_camera.png'),
                                          onPressed: () {
                                            // Handle camera button press
                                          },
                                        ),
                                        controller.typedText.value.isNotEmpty?SizedBox():IconButton(
                                          icon: Image.asset('assets/images/ic_microphone.png'),
                                          onPressed: () {
                                            // Handle audio button press
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )),
                            Positioned(
                              left: 30,
                              bottom: Get.height*.1,
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: Colors.white
                                ),
                                child: Text(
                                  'Enter to Message AI...',
                                  style: const TextStyle(color: Colors.black,backgroundColor: Colors.white),
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ],
                );
              }
            },
          )),
    );
  }
}
