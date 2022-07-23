import 'package:flutter/material.dart';

import '../../components/custom_text_field.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "/home_screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomTextField(
              textEditingController: textEditingController,
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
