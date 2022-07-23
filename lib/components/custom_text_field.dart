import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/app_colors.dart';
import '../utils/app_const.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;

  const CustomTextField({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: false,
      textDirection: TextDirection.rtl,
      maxLength: 12,
      showCursor: false,
      controller: textEditingController,
      style: TextStyle(
        color: AppColors.kTextColor,
        fontSize: AppConst.textSizeLarge,
      ),
      decoration: InputDecoration(
        hintText: "0",
        hintTextDirection: TextDirection.rtl,
        hintStyle: TextStyle(
          color: AppColors.kTextColor,
          fontSize: AppConst.textSizeLarge,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 1.w,
          vertical: 1.h,
        ),
        border: InputBorder.none,
      ),
    );
  }
}
