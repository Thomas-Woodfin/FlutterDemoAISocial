import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../resources/colors.dart';

class RoundedButtonWithIcon extends StatelessWidget {
  RoundedButtonWithIcon({
    super.key,
    this.icon = 'assets/images/ic_share.png',
    this.title = 'Share AISocial',
    this.topPadding = 0,
    this.topLeftCorner = 8,
    this.topRightCorner = 8,
    this.bottomLeftCorner = 8,
    this.bottomRightCorner = 8,
  });

  String icon;
  String title;
  double topPadding;
  double topLeftCorner;
  double topRightCorner;
  double bottomLeftCorner;
  double bottomRightCorner;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5, right: 5, bottom: 1, top: topPadding),
      child: Container(
          width: Get.width * 1,
          decoration: BoxDecoration(
              color: ColorManager.introTwoGradientStart,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(topLeftCorner),
                topRight: Radius.circular(topRightCorner),
                bottomLeft: Radius.circular(bottomLeftCorner),
                bottomRight: Radius.circular(bottomRightCorner),
              )),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: Get.width * .05,
                    top: Get.width * .05,
                    bottom: Get.width * .05,
                    right: Get.width * .03),
                child: Image.asset(
                  icon,
                  width: Get.width * 0.07,
                  height: Get.width * 0.06,
                ),
              ),
              Expanded(
                child: Text(title,overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: Get.width * .04,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto')),
              ),
              const SizedBox(width: 20,)
            ],
          )),
    );
  }
}