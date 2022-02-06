import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidhya_hub/app/common/styles/app_text_style.dart';
import 'package:vidhya_hub/app/common/styles/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  const CustomTextField(
      {Key? key,
      required this.hintText,
      required this.controller,
      required this.keyboardType})
      : super(key: key);

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
          //contentPadding: EdgeInsets.symmetric(vertical: 0.01),
          labelText: hintText,
          floatingLabelStyle: MyTextStyles.loginHeader.copyWith(
            color: AppColors.ashTextColor,
            fontWeight: FontWeight.normal,
            fontSize: 14,
          ),
          fillColor: AppColors.ashTextColor,
        ),
      ),
    );
  }
}
