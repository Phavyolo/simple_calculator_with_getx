import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/app_colors.dart';
import '../utils/app_const.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Function()? onTap;
  final Function()? onLongPress;

  const CustomButton({
    Key? key,
    required this.label,
    this.onTap,
    this.onLongPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Container(
        width: 50.sp,
        height: 50.sp,
        decoration: BoxDecoration(
          color: AppColors.kPrimaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(
              10.sp,
            ),
          ),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: AppColors.kTextColor,
              fontSize: AppConst.buttonTextSize,
            ),
          ),
        ),
      ),
    );
  }
}
