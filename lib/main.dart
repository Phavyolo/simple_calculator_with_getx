import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_calcutor_with_getx/screens/init/splash_screen.dart';
import 'package:get/get.dart';
import 'package:simple_calcutor_with_getx/utils/app_colors.dart';
import 'package:simple_calcutor_with_getx/utils/routes.dart';
import 'package:simple_calcutor_with_getx/utils/themes.dart';
import 'package:sizer/sizer.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColors.kPrimaryColor,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
  );

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Simple Calculator',
          theme: theme(),
          initialRoute: SplashScreen.routeName,
          routes: routes,
        );
      },
    );
  }
}
