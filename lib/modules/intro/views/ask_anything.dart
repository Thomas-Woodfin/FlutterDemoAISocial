import 'package:flutter_demo_ai_social/common/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/routes/app_routes.dart';

class AskAnything extends StatelessWidget {
  const AskAnything({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        // backgroundColor: ColorManager.brandColor,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Image.asset('assets/images/bg_ask_anything.png'),
                Positioned(
                  top: Get.height * .03,
                  left: Get.height * .03,
                  child: Text(
                    'Ask\nAnything',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: Get.width * .15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto'),
                  ),
                )
              ]),
              TabBar(
                tabs: [
                  Tab(text: 'All'),
                  Tab(text: 'Popular'),
                  Tab(text: 'Personal'),
                  Tab(text: 'Business'),
                ],
                labelColor: Colors.black,
                indicatorColor: ColorManager.introTwoGradientStart,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: Get.height * .55,
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Frequently Used',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto'),
                              ),
                            ),
                            SizedBox(
                              height: Get.height * .18,
                              child: ListView.builder(
                                itemCount: 50,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (_, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      Get.toNamed(AppRoutes.everyDayChallenges);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: Get.width * .3,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          // Circular corners
                                          image: const DecorationImage(
                                            image: AssetImage(
                                                'assets/images/ic_demo_img_freequently_used.png'),
                                            // Replace with your image
                                            fit: BoxFit
                                                .cover, // Cover the entire container
                                          ),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            gradient: const LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                Colors.transparent,
                                                Colors.black,
                                              ],
                                            ),
                                          ),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                    'Write an Essay ${index + 1}',
                                                    textAlign: TextAlign.center,
                                                    style: const TextStyle(
                                                        color: Colors.white)),
                                                const SizedBox(
                                                  height: 15,
                                                )
                                              ]),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Personal',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto'),
                              ),
                            ),
                            SizedBox(
                              height: Get.height * .18,
                              child: ListView.builder(
                                itemCount: 50,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (_, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: Get.width * .3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        // Circular corners
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/images/ic_demo_img_business.png'),
                                          // Replace with your image
                                          fit: BoxFit
                                              .cover, // Cover the entire container
                                        ),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Colors.transparent,
                                              Colors.black,
                                            ],
                                          ),
                                        ),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                  'Write an Essay ${index + 1}',
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                      color: Colors.white)),
                                              const SizedBox(
                                                height: 15,
                                              )
                                            ]),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Business',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto'),
                              ),
                            ),
                            SizedBox(
                              height: Get.height * .18,
                              child: ListView.builder(
                                itemCount: 50,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (_, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: Get.width * .3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        // Circular corners
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/images/ic_demo_img_personal.png'),
                                          // Replace with your image
                                          fit: BoxFit
                                              .cover, // Cover the entire container
                                        ),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Colors.transparent,
                                              Colors.black,
                                            ],
                                          ),
                                        ),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                  'Write an Essay ${index + 1}',
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                      color: Colors.white)),
                                              const SizedBox(
                                                height: 15,
                                              )
                                            ]),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Center(child: Text('Tab 2 content')),
                    const Center(child: Text('Tab 3 content')),
                    const Center(child: Text('Tab 3 content')),
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
