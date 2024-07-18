import 'package:ai_social_flutter/common/resources/colors.dart';
import 'package:ai_social_flutter/modules/pdf_ai/view_model/pdf_ai_vm.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widgets/circular_button.dart';

class PDFAiScreen extends StatelessWidget {
  const PDFAiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PDFAiViewModel());
    return Obx(
      () => Scaffold(
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
                        'Send PDF to AI for Analysis',
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
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                          itemCount: 10,
                          shrinkWrap: true,
                          reverse: true,
                          itemBuilder: (_, index) {
                            return Container(
                              margin: EdgeInsets.only(
                                  top: 10.0, bottom: 0.0, right: 10),
                              child: index % 2 == 0
                                  ? Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          child: CircleAvatar(
                                            backgroundImage: NetworkImage(
                                                "data['profileImageURL']"),
                                            radius: 10,
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            padding: const EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              color: ColorManager
                                                  .singleChatBgTextColor,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(0.0),
                                                topRight: Radius.circular(10.0),
                                                bottomLeft:
                                                    Radius.circular(10.0),
                                                bottomRight:
                                                    Radius.circular(10),
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
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
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
                                                      "data['greeting']",
                                                      textStyle:
                                                          const TextStyle(
                                                              fontSize: 16.0,
                                                              color:
                                                                  Colors.black),
                                                      speed: const Duration(
                                                          milliseconds: 20),
                                                    ),
                                                  ],
                                                  totalRepeatCount: 1,
                                                ),
                                                SizedBox(height: 5.0),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
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
                                    )
                                  : Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                left: 10.0),
                                            padding: const EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              color: ColorManager
                                                  .singleChatBgTextColor,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10.0),
                                                topRight: Radius.circular(0.0),
                                                bottomLeft:
                                                    Radius.circular(10.0),
                                                bottomRight:
                                                    Radius.circular(10),
                                              ),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "Lorem ipsum dolor sit amet? Consectetuer!",
                                                  style: TextStyle(
                                                      fontSize: 16.0,
                                                      color: Colors.black),
                                                ),
                                                SizedBox(height: 5.0),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
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
                                            backgroundImage: AssetImage(
                                                'assets/images/ic_user_default.jpg'),
                                            radius: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                            );
                          }),
                    ),
                    Container(
                      width: Get.width * 1,
                      height: Get.height * .35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 8,
                            left: Get.width / 3,
                            right: Get.width / 3,
                            child: Container(
                              height: 6,
                              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                          Positioned(
                            top: 5,
                            right: 15,
                            child: InkWell(
                              onTap: () {
                                controller.textEditingController.text = '';
                                controller.typedText.value = '';
                                FocusScope.of(context).unfocus();
                              },
                              child: const Icon(Icons.arrow_downward),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 30, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    print('Suggestions clicked');
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            'assets/images/ic_suggestion.png',
                                            width: Get.width * .06,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            'Suggestions',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
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
                                        children: [
                                          Image.asset(
                                            'assets/images/ic_output_language.png',
                                            width: Get.width * .06,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            'Output Language',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 80,
                            right: 10,
                            child: Text(
                              '${controller.typedText.value.length}/3000',
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                          Positioned(
                            top: 100,
                            left: 10,
                            right: 10,
                            child: TextFormField(
                              controller: controller.textEditingController,
                              onChanged: (value) {
                                controller.typedText.value = value;
                                print(value);
                              },
                              maxLength: 3000,
                              maxLines: 5,
                              decoration: InputDecoration(
                                counter: const Text(''),
                                helperMaxLines: 20,
                                labelText: 'Input Text',
                                labelStyle:
                                    const TextStyle(color: Colors.black),
                                focusColor: ColorManager.brandColor,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: ColorManager.brandColor,
                                        width: 3),
                                    borderRadius: BorderRadius.circular(20)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: ColorManager.brandColor,
                                        width: 3),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 102,
                            right: 15,
                            child: InkWell(
                              onTap: () {
                                controller.textEditingController.text = '';
                                controller.typedText.value = '';
                                FocusScope.of(context).unfocus();
                              },
                              child: const Icon(Icons.close),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        Image.asset(
                          'assets/images/ic_sendtoai_pdf.png',
                          width: Get.width * .09,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'assets/images/ic_sendtoai_ai.png',
                          width: Get.width * .09,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'assets/images/ic_sendtoai_video.png',
                          width: Get.width * .09,
                        ),
                        const Spacer(),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('Click on the PDF icon above to upload the PDF'),
                    const SizedBox(
                      height: 20,
                    ),
                    const RoundedButton(
                        icon: 'assets/images/ic_send_to_ai.png',
                        title: 'Send to AI'),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
