import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidhya_hub/app/common/styles/app_text_style.dart';
import 'package:vidhya_hub/app/common/styles/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  TextEditingController? controller;
  TextInputType? keyboardType;
  Widget? suffixIcon;
  CustomTextField({
    Key? key,
    required this.hintText,
    this.controller,
    this.keyboardType,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: Get.width * 0.08,
        right: Get.width * 0.08,
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          focusColor: AppColors.ashTextColor,
          labelText: hintText,
          labelStyle: MyTextStyles.loginHeader.copyWith(
            color: AppColors.ashTextColor,
            fontWeight: FontWeight.normal,
            fontSize: 14,
          ),
          floatingLabelStyle: MyTextStyles.loginHeader.copyWith(
            color: AppColors.ashTextColor,
            fontWeight: FontWeight.normal,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
