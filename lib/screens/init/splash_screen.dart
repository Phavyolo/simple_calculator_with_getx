import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_calcutor_with_getx/screens/home/home_screen.dart';
import 'package:simple_calcutor_with_getx/utils/app_colors.dart';
import 'package:simple_calcutor_with_getx/utils/app_const.dart';
import 'package:simple_calcutor_with_getx/utils/app_text.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash_screen";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(HomeScreen.routeName);
    });

    return Scaffold(
      body: Center(
        child: Text(
          AppText.splashText,
          style: TextStyle(
            color: AppColors.kTextColor,
            fontSize: AppConst.textSizeBig,
          ),
        ),
      ),
    );
  }
}
