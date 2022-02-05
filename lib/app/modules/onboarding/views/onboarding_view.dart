import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vidhya_hub/app/common/styles/colors.dart';
import 'package:vidhya_hub/app/modules/onboarding/controllers/onboarding_controller.dart';
import "package:flutter_svg/flutter_svg.dart";
import 'package:vidhya_hub/app/routes/app_pages.dart';

class OnboardingView extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    final h = Get.height;
    final w = Get.width;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Container(
            child: SvgPicture.asset(
              'assets/background/onboarding.svg',
            ),
          ),
          Positioned(
            top: h * 0.475,
            right: w * 0.16,
            child: Container(
              height: h * 0.05,
              width: w * 0.70,
              child: SvgPicture.asset(
                'assets/icons/vidyahub.svg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: h * 0.10,
            right: w * 0.12,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.LOGIN);
                  },
                  child: Container(
                    height: h * 0.06,
                    width: w * 0.75,
                    decoration: BoxDecoration(
                      color: AppColors.buttonColor,
                      borderRadius: BorderRadius.circular(w / 40),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: GoogleFonts.poppins(
                          fontSize: w / 23,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.REGISTER);
                  },
                  child: Text(
                    "Create Account",
                    style: GoogleFonts.poppins(
                      fontSize: w / 23,
                      color: AppColors.buttonColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
