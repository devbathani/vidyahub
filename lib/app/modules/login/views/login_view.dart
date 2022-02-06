import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:vidhya_hub/app/common/styles/app_text_style.dart';
import 'package:vidhya_hub/app/common/styles/colors.dart';

import '../../../common/widgets/text_field.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    final h = Get.height;
    final w = Get.width;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: h * 0.05),
                  child: SvgPicture.asset(
                    'assets/icons/vidyahub.svg',
                    height: h * 0.03,
                    width: w * 0.10,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: h * 0.08,
                ),
                SvgPicture.asset(
                  'assets/auth/boy.svg',
                  height: h * 0.25,
                  width: w * 0.45,
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                Container(
                  height: h * 0.4,
                  width: w * 0.85,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: Get.height * 0.03),
                        child: Text(
                          'Enter Your Phone Number',
                          style: MyTextStyles.loginHeader.copyWith(
                            fontSize: w / 22,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.05,
                      ),
                      CustomTextField(
                        controller: controller.phoneController,
                        hintText: 'Phone Number',
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        height: Get.height * 0.08,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.OTP);
                        },
                        child: Container(
                          height: Get.height * 0.06,
                          width: Get.width * 0.45,
                          decoration: BoxDecoration(
                            color: AppColors.buttonColor,
                            borderRadius: BorderRadius.circular(Get.width / 40),
                          ),
                          child: Center(
                            child: Text(
                              "Continue",
                              style: MyTextStyles.buttonTextStyle,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Align(
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(Routes.REGISTER);
                          },
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Don’t have an account yet? ',
                                  style: MyTextStyles.hintText.copyWith(
                                    fontSize: w / 30,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Create one',
                                  style: MyTextStyles.hintText.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.buttontxtColor,
                                    fontSize: w / 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
