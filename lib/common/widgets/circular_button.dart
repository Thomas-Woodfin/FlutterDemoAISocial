import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../resources/colors.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    this.icon,
    this.titleFontSize=.05,
    this.borderRadius=15,
    this.verticalPadding=15,
    required this.title,
  });

  final double titleFontSize;
  final double verticalPadding;
  final double borderRadius;
  final icon;
  final title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * .85,
      decoration: BoxDecoration(
        color: ColorManager.introTwoGradientStart,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(
            horizontal: 20, vertical: verticalPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon==null?const SizedBox():Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Image.asset(icon,width: Get.width*.06,height: Get.width*.06,),
            ),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: Get.width * titleFontSize,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto'),
            ),
          ],
        ),
      ),
    );
  }
}