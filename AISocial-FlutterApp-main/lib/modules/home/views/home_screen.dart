import 'package:ai_social_flutter/common/resources/colors.dart';
import 'package:ai_social_flutter/modules/home/view_model/home_vm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeViewModel());
    return Obx(
            () => Scaffold(
      // backgroundColor: ColorManager.brandColor,
      body:  SafeArea(
        child: controller.children
            .elementAt(controller.currentIndex.value),
      ),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.22),
                spreadRadius: -2,
                blurRadius: 10,
                offset: const Offset(0, -8),
              ),
            ],
          ),
          child: BottomNavigationBar(
            elevation: 0.0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: ColorManager.brandColor,
            // showSelectedLabels: false,
            // showUnselectedLabels: false,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.white,
            onTap: controller.onTabTapped,
            currentIndex: controller.currentIndex.value,
            items: [
              BottomNavigationBarItem(
                  activeIcon: Image.asset('assets/images/ic_aichat.png',
                      height: 27, width: 27, color: Colors.red),
                  icon: Image.asset('assets/images/ic_aichat.png',
                      height: 27, width: 27),
                  label: 'AI Chat'),
              BottomNavigationBarItem(
                activeIcon: Image.asset('assets/images/ic_pdfai.png',
                    height: 27, width: 27, color: Colors.red),
                icon: Image.asset('assets/images/ic_pdfai.png',
                    height: 27, width: 27),
                label: 'PDF AI',
              ),
              BottomNavigationBarItem(
                  activeIcon: Image.asset('assets/images/ic_socialai.png',
                      height: 27, width: 27, color: Colors.red),
                  icon: Image.asset('assets/images/ic_socialai.png',
                      height: 27, width: 27),
                  label: 'Social AI'),
              BottomNavigationBarItem(
                  activeIcon: Image.asset('assets/images/ic_heyai.png',
                      height: 27, width: 27, color: Colors.red),
                  icon: Image.asset('assets/images/ic_heyai.png',
                      height: 27, width: 27),
                  label: 'Hey AI'),
              BottomNavigationBarItem(
                  activeIcon: Image.asset('assets/images/ic_moreai.png',
                      height: 27, width: 27, color: Colors.red),
                  icon: Image.asset('assets/images/ic_moreai.png',
                      height: 27, width: 27),
                  label: 'More AIs'),
            ],
          ),
        ),
      ),
    );
  }
}
