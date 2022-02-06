import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'colors.dart';

abstract class MyTextStyles {
  static double w = Get.width;
  static TextStyle get buttonTextStyle => GoogleFonts.poppins(
        fontSize: w / 23,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get loginHeader => GoogleFonts.poppins(
        color: AppColors.buttonColor,
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get hintText => GoogleFonts.poppins(
        color: AppColors.buttonColor,
        fontSize: 10.sp,
        fontWeight: FontWeight.w500,
      );
}
