import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/app_colors.dart';
import '../utils/app_const.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final Function(String value) onChanged;

  const CustomTextField({
    Key? key,
    required this.textEditingController,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: false,
      textDirection: TextDirection.rtl,
      maxLength: 12,
      showCursor: false,
      controller: textEditingController,
      onChanged: onChanged,
      style: TextStyle(
        color: AppColors.kTextColor,
        fontSize: AppConst.textSizeLarge,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 1.w,
          vertical: 1.h,
        ),
        border: InputBorder.none,
      ),
    );
  }
}
