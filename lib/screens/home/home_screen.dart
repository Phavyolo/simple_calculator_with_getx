import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_calcutor_with_getx/controllers/arithmetics_controller.dart';
import 'package:simple_calcutor_with_getx/controllers/home_controller.dart';
import 'package:simple_calcutor_with_getx/utils/app_colors.dart';
import 'package:simple_calcutor_with_getx/utils/app_const.dart';
import 'package:sizer/sizer.dart';

import '../../components/custom_button.dart';
import '../../components/custom_text_field.dart';

class HomeScreen extends GetView<HomeController> {
  static const String routeName = "/home_screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    ArithmeticsController arithmeticsController =
        Get.put(ArithmeticsController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox.shrink(),
              Column(
                children: [
                  CustomTextField(
                    textEditingController:
                        controller.textEditingController.value,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(
                            () => CustomButton(
                              label: controller.clearOrClearAll(),
                              boxColor: AppColors.kPrimaryColor,
                              onTap: () {
                                if (controller.initialValue.value.isNotEmpty) {
                                  controller.initialValue.value = "";
                                  controller.textEditingController.value.text =
                                      controller.initialValue.value;
                                }
                              },
                            ),
                          ),
                          CustomButton(
                            label: "%",
                            boxColor: AppColors.kLightButtonColor,
                            onTap: () {
                              if (controller.initialValue.value.isNotEmpty) {
                                arithmeticsController.operand1.value =
                                    controller.textEditingController.value.text;
                                controller.initialValue.value =
                                    arithmeticsController.percentage();
                                controller.textEditingController.value.text =
                                    controller.initialValue.value;
                              }
                            },
                          ),
                          CustomButton(
                            label: "÷",
                            boxColor: AppColors.kLightButtonColor,
                            onTap: () {
                              if (controller.initialValue.value.length < 12) {
                                controller.initialValue.value =
                                    "${controller.initialValue.value}1";
                                controller.textEditingController.value.text =
                                    controller.initialValue.value;
                              }
                            },
                          ),
                          CustomButton(
                            label: "DE",
                            boxColor: AppColors.kLightButtonColor,
                            onTap: () {
                              if (controller.initialValue.value.isNotEmpty) {
                                controller.initialValue.value = controller
                                    .textEditingController.value.text
                                    .substring(
                                        0,
                                        controller.textEditingController.value
                                                .text.length -
                                            1);
                                controller.textEditingController.value.text =
                                    controller.initialValue.value;
                              }
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                            label: "×",
                            boxColor: AppColors.kPrimaryColor,
                            onTap: () {},
                          ),
                          CustomButton(
                            label: "7",
                            onTap: () {
                              if (controller.initialValue.value.length < 12) {
                                controller.initialValue.value =
                                    "${controller.initialValue.value}7";
                                controller.textEditingController.value.text =
                                    controller.initialValue.value;
                              }
                            },
                          ),
                          CustomButton(
                            label: "8",
                            onTap: () {
                              if (controller.initialValue.value.length < 12) {
                                controller.initialValue.value =
                                    "${controller.initialValue.value}8";
                                controller.textEditingController.value.text =
                                    controller.initialValue.value;
                              }
                            },
                          ),
                          CustomButton(
                            label: "9",
                            onTap: () {
                              if (controller.initialValue.value.length < 12) {
                                controller.initialValue.value =
                                    "${controller.initialValue.value}9";
                                controller.textEditingController.value.text =
                                    controller.initialValue.value;
                              }
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                            label: "+",
                            boxColor: AppColors.kPrimaryColor,
                            onTap: () {
                              // var arth = +;
                              // print(2 "+" 2);
                            },
                          ),
                          CustomButton(
                            label: "4",
                            onTap: () {
                              if (controller.initialValue.value.length < 12) {
                                controller.initialValue.value =
                                    "${controller.initialValue.value}4";
                                controller.textEditingController.value.text =
                                    controller.initialValue.value;
                              }
                            },
                          ),
                          CustomButton(
                            label: "5",
                            onTap: () {
                              if (controller.initialValue.value.length < 12) {
                                controller.initialValue.value =
                                    "${controller.initialValue.value}5";
                                controller.textEditingController.value.text =
                                    controller.initialValue.value;
                              }
                            },
                          ),
                          CustomButton(
                            label: "6",
                            onTap: () {
                              if (controller.initialValue.value.length < 12) {
                                controller.initialValue.value =
                                    "${controller.initialValue.value}6";
                                controller.textEditingController.value.text =
                                    controller.initialValue.value;
                              }
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                            label: "-",
                            boxColor: AppColors.kPrimaryColor,
                            onTap: () {
                              double n = 10.001;
                              print(n.toStringAsFixed(
                                  n.truncateToDouble() == n ? 0 : 3));
                              print(n.truncateToDouble());
                              print((0.5).round());
                            },
                          ),
                          CustomButton(
                            label: "1",
                            onTap: () {
                              if (controller.initialValue.value.length < 12) {
                                controller.initialValue.value =
                                    "${controller.initialValue.value}1";
                                controller.textEditingController.value.text =
                                    controller.initialValue.value;
                              }
                            },
                          ),
                          CustomButton(
                            label: "2",
                            onTap: () {
                              if (controller.initialValue.value.length < 12) {
                                controller.initialValue.value =
                                    "${controller.initialValue.value}2";
                                controller.textEditingController.value.text =
                                    controller.initialValue.value;
                              }
                            },
                          ),
                          CustomButton(
                            label: "3",
                            onTap: () {
                              if (controller.initialValue.value.length < 12) {
                                controller.initialValue.value =
                                    "${controller.initialValue.value}3";
                                controller.textEditingController.value.text =
                                    controller.initialValue.value;
                              }
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                            label: "=",
                            boxColor: AppColors.kPrimaryColor,
                            onTap: () {},
                          ),
                          CustomButton(
                            label: "±",
                            onTap: () {},
                          ),
                          CustomButton(
                            label: ".",
                            onTap: () {
                              if (controller.initialValue.value.length < 12) {
                                controller.initialValue.value =
                                    "${controller.initialValue.value}.";
                                controller.textEditingController.value.text =
                                    controller.initialValue.value;
                              }
                            },
                          ),
                          CustomButton(
                            label: "0",
                            onTap: () {
                              if (controller.initialValue.value.length < 12) {
                                controller.initialValue.value =
                                    "${controller.initialValue.value}0";
                                controller.textEditingController.value.text =
                                    controller.initialValue.value;
                              }
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
