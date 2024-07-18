import 'package:ai_social_flutter/common/resources/colors.dart';
import 'package:ai_social_flutter/modules/home/view_model/get_pro_access_vm.dart';
import 'package:ai_social_flutter/modules/home/views/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/widgets/circular_button.dart';
import '../../social/views/social_screen.dart';
import '../../social_ai/views/social_ai_screen.dart';

class GetProAccessScreen extends StatelessWidget {
  const GetProAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GetProAccessViewModel());
    return Obx(() => Scaffold(
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
                          Get.back();},
                        icon: const Icon(
                          CupertinoIcons.left_chevron,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Get Pro Access',
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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: Get.height * .26,
                          child: Stack(
                            children: [
                              PageView.builder(
                                  scrollDirection: Axis.horizontal,
                                  controller: controller.pageController,
                                  onPageChanged: (value) {
                                    controller.currentPageIndex.value = value;
                                  },
                                  itemCount: controller.slides.length,
                                  itemBuilder: (context, index) {
                                    return Image.asset(
                                      controller.slides[index],
                                      width: Get.width * 1,
                                    );
                                  }),
                              Positioned(
                                top: Get.height * .10,
                                left: Get.width * .04,
                                child: GestureDetector(
                                  onTap: () {
                                    print('left clieked');
                                    if (controller.currentPageIndex.value ==
                                        0) {
                                    } else {
                                      controller.currentPageIndex.value--;
                                      controller.pageController.jumpToPage(
                                          controller.currentPageIndex.value);
                                    }
                                  },
                                  child: Icon(
                                    CupertinoIcons.left_chevron,
                                    color:
                                        controller.currentPageIndex.value == 0
                                            ? ColorManager.ash
                                            : Colors.black,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: Get.height * .10,
                                right: Get.width * .04,
                                child: GestureDetector(
                                  onTap: () {
                                    print('right clieked');
                                    if (controller.currentPageIndex.value ==
                                        controller.slides.length - 1) {
                                    } else {
                                      controller.currentPageIndex.value++;
                                      controller.pageController.jumpToPage(
                                          controller.currentPageIndex.value);
                                    }
                                  },
                                  child: Icon(
                                    CupertinoIcons.right_chevron,
                                    color: controller.currentPageIndex.value ==
                                            controller.slides.length - 1
                                        ? ColorManager.ash
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: SizedBox(
                            height: Get.height * .1,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: controller.topSlides.length,
                                itemBuilder: (_, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      print('clicked at position $index');
                                    },
                                    child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5),
                                        child: Image.asset(
                                          controller.topSlides[index],
                                          width: Get.width * .3,
                                        )),
                                  );
                                }),
                          ),
                        ),
                        Container(
                          width: Get.width * .85,
                          decoration: BoxDecoration(
                              color: ColorManager.introTwoGradientStart,
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.selectedOption.value = 1;
                                },
                                child: Container(
                                  width: Get.width * .75,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5.0, bottom: 5),
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        controller.selectedOption.value == 1
                                            ? Image.asset(
                                                'assets/images/ic_checked.png',
                                                width: 20,
                                                height: 20,
                                              )
                                            : Image.asset(
                                                'assets/images/ic_unchecked.png',
                                                width: 20,
                                                height: 20,
                                              ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Free Trial Enabled',
                                          style: TextStyle(
                                              color: ColorManager.brandColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Spacer(),
                                        Switch(
                                          value: controller
                                              .isFreeTrialEnabled.value,
                                          onChanged: (val) {
                                            controller
                                                .isFreeTrialEnabled.value = val;
                                          },
                                          activeColor: ColorManager.brandColor,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.selectedOption.value = 2;
                                },
                                child: Container(
                                  width: Get.width * .75,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 15, bottom: 15),
                                        child:
                                            controller.selectedOption.value == 2
                                                ? Image.asset(
                                                    'assets/images/ic_checked.png',
                                                    width: 20,
                                                    height: 20,
                                                  )
                                                : Image.asset(
                                                    'assets/images/ic_unchecked.png',
                                                    width: 20,
                                                    height: 20,
                                                  ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Yearly',
                                            style: TextStyle(
                                                color: ColorManager.brandColor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            '\$39.99/year',
                                            style: TextStyle(
                                              color:
                                                  ColorManager.gpaSubTitleColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      Container(
                                        height: Get.height * .07,
                                        width: Get.width * .15,
                                        decoration: BoxDecoration(
                                            color: ColorManager.nextBtnBgColor,
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(8),
                                                    bottomRight:
                                                        Radius.circular(8))),
                                        child: Center(
                                            child: Text(
                                          'Save\n84%',
                                          style: TextStyle(
                                              fontSize: Get.width * .045,
                                              fontWeight: FontWeight.bold,
                                              color: ColorManager
                                                  .introTwoGradientStart),
                                        )),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.selectedOption.value = 3;
                                },
                                child: Container(
                                  width: Get.width * .75,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15.0, bottom: 15),
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        controller.selectedOption.value == 3
                                            ? Image.asset(
                                                'assets/images/ic_checked.png',
                                                width: 20,
                                                height: 20,
                                              )
                                            : Image.asset(
                                                'assets/images/ic_unchecked.png',
                                                width: 20,
                                                height: 20,
                                              ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '3-Days Free Trial',
                                              style: TextStyle(
                                                  color:
                                                      ColorManager.brandColor,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'then \$4.99/week',
                                              style: TextStyle(
                                                color: ColorManager
                                                    .gpaSubTitleColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: Get.height * .02,
                              ),
                              Text(
                                'Cancel Anytime',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: Get.width * .05,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto'),
                              ),
                              SizedBox(
                                height: Get.height * .02,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: Get.width * .02,
                                  ),
                                  const Text(
                                    'Terms',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.circle,
                                    size: 8,
                                    color: ColorManager.nextBtnBgColor,
                                  ),
                                  const Text(
                                    'Privacy Policy',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.circle,
                                    size: 8,
                                    color: ColorManager.nextBtnBgColor,
                                  ),
                                  const Text(
                                    'Restore',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: Get.width * .02,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: Get.height * .02,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: (){
                            Get.to(()=>HomeScreen());
                          },
                            child: const RoundedButton(title: 'Continue')),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
