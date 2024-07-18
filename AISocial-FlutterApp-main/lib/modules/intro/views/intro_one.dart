import 'package:ai_social_flutter/common/resources/colors.dart';
import 'package:ai_social_flutter/common/routes/app_routes.dart';
import 'package:ai_social_flutter/modules/intro/view_model/intro_one_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class IntroductionScreenOne extends StatelessWidget {
  const IntroductionScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    final controller= Get.put(IntroOneViewModel());
    return Scaffold(
      backgroundColor: ColorManager.brandColor,
      body: SafeArea(
        child: Obx(() => controller.isLoading.value?const Center(child: CircularProgressIndicator(),):SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Text(
                    '5 new strategies to get powerful\nresults with your prompts:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: Get.width * .065,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Staatliches'),
                  )),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.iResponse.data!.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) {
                    var singleResponse=controller.iResponse.data![index];
                    return index % 2 == 0
                        ? GestureDetector(
                      onTap: (){
                        Get.toNamed(AppRoutes.introScreenTwo);
                      },
                          child: Padding(
                                                padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, bottom: 20),
                                                child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: Get.width * .7,
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    singleResponse.title.toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Roboto',
                                        fontSize: Get.width * .05,
                                        fontWeight: FontWeight.w600),
                                  ),
                                   Text(
                                     singleResponse.subtitle.toString(),
                                    style:const TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            SvgPicture.asset(
                              singleResponse.img.toString(),
                              width: Get.width * .2,
                            )
                          ],
                                                ),
                                              ),
                        )
                        : GestureDetector(
                      onTap: (){
                        Get.toNamed(AppRoutes.introScreenTwo);
                      },
                          child: Padding(
                                                padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, bottom: 20),
                                                child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              singleResponse.img.toString(),
                              width: Get.width * .2,
                            ),
                            SizedBox(
                              width: Get.width * .7,
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    singleResponse.title.toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Roboto',
                                        fontSize: Get.width * .05,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    singleResponse.subtitle.toString(),
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ],
                                                ),
                                              ),
                        );
                  }),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
