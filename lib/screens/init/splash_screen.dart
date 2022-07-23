import 'package:flutter/material.dart';
import 'package:simple_calcutor_with_getx/utils/app_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppText.splashText,
        ),
      ),
    );
  }
}
