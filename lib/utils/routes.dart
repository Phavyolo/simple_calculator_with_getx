import 'package:flutter/material.dart';
import 'package:simple_calcutor_with_getx/screens/home/home.dart';
import 'package:simple_calcutor_with_getx/screens/init/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
};
