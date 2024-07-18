import 'package:ai_social_flutter/common/routes/app_pages.dart';
import 'package:ai_social_flutter/modules/auth/views/sign_in_screen.dart';
import 'package:ai_social_flutter/modules/profile/views/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "package:firebase_core/firebase_core.dart";

import 'modules/home/views/get_pro_access_screen.dart';
import 'modules/home/views/home_screen.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'AI Social',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false,),
      home: const GetProAccessScreen(),
      // home: const HomeScreen(),
      getPages: AppPages.pages,
    );
  }
}
