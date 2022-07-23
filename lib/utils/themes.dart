import 'package:flutter/material.dart';
import 'package:simple_calcutor_with_getx/utils/app_colors.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.kBgColor,
    fontFamily: 'Digital-7',
    textTheme: textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyText1: TextStyle(
      color: AppColors.kTextColor,
    ),
  );
}
