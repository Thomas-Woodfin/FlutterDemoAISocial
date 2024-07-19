import 'package:flutter_demo_ai_social/modules/profile/view_model/profile_vm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends GetView {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileViewModel());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 260,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/profile_top_bg.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 50.0,
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              child: const Icon(
                                // Icons.arrow_back_ios,
                                CupertinoIcons.left_chevron,
                                color: Colors.white,
                              ),
                              onTap: () {
                                Get.back();
                              },
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            const Text(
                              'My Profile',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          child: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: -280,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.88,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                        width: 0.2,
                        color: Colors.grey,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/images/edit.png',
                              height: 20,
                              width: 20,
                              color: Colors.transparent,
                            ),
                            SizedBox(
                              height: 60,
                              width: 60,
                              child: Stack(
                                clipBehavior: Clip.none,
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    top: -60,
                                    child: Container(
                                      height: 120,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 3,
                                        ),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/images/profile_thomas.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              child: Image.asset(
                                'assets/images/edit.png',
                                height: 20,
                                width: 20,
                              ),
                              onTap: () {
                                print('object');
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Thomas Woofdin',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'twas2023',
                              style: TextStyle(color: Colors.grey, height: 1.2),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Bio',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, '
                          'sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna '
                          'aliquam erat volutpat. Ut wisi ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13.5,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Mobile',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          '+1 895 696 586',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13.5,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Email',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'thomasaisocial@email.com',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13.5,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Location',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          '316 Bridge St, New Cumberland, Pennsylvania, United States',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13.5,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 300,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Photos',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      controller.photoList.isEmpty
                          ? const SizedBox()
                          : GestureDetector(
                              child: Image.asset(
                                'assets/images/add_photo.png',
                                height: 20,
                                width: 20,
                              ),
                              onTap: () {},
                            ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  controller.photoList.isEmpty
                      ? SizedBox(
                          height: 220,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/no_image.png',
                                height: 80,
                                width: 80,
                              ),
                              const Text(
                                'No Photos',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(
                                      0xff1A35D3,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: const Text(
                                    'Add/Edit info',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : SizedBox(
                          height: 240,
                          child: GridView.builder(
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 8,
                                    mainAxisSpacing: 10),
                            itemCount: controller.photoList.length >= 6
                                ? 6
                                : controller.photoList.length,
                            itemBuilder: (context, index) {
                              var item = controller.photoList[index];
                              return GestureDetector(
                                child: Container(
                                  height: 70,
                                  width:
                                      MediaQuery.of(context).size.width * 0.27,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      10.0,
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(item),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: index == 5
                                      ? Container(
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.black.withOpacity(0.4),
                                            borderRadius: BorderRadius.circular(
                                              10.0,
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            '${controller.photoList.length - 5}+',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )
                                      : const SizedBox(),
                                ),
                                onTap: () {
                                  if (index == 5) {
                                    print('more list');
                                  } else {
                                    print('show image');
                                  }
                                },
                              );
                            },
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
