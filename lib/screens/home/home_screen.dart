import 'package:flutter/material.dart';
import 'package:simple_calcutor_with_getx/utils/app_colors.dart';
import 'package:simple_calcutor_with_getx/utils/app_const.dart';
import 'package:sizer/sizer.dart';

import '../../components/custom_button.dart';
import '../../components/custom_text_field.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "/home_screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();

    double initValue = 0;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomTextField(
              textEditingController: textEditingController,
              onChanged: (value) {
                initValue = value;
              },
            ),
            CustomButton(
              label: "1",
              onTap: () {
                textEditingController.text = "1";
              },
              onLongPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}
