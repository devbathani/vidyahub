import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../../../common/styles/app_text_style.dart';
import '../../../common/styles/colors.dart';
import '../../../common/widgets/otp_field.dart';
import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: Get.height * 0.05),
                  child: SvgPicture.asset(
                    'assets/icons/vidyahub.svg',
                    height: 20,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: Get.height * 0.06),
                  child: SvgPicture.asset(
                    'assets/auth/girl.svg',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: Get.height * 0.06),
                  child: Container(
                    height: Get.height * 0.325,
                    width: Get.width * 0.9,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: Get.height * 0.025),
                          child: Text(
                            'OTP Verification',
                            style: MyTextStyles.loginHeader,
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.03,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.04,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              OtpTextField(first: true, last: false),
                              OtpTextField(first: false, last: false),
                              OtpTextField(first: false, last: false),
                              OtpTextField(first: false, last: false),
                              OtpTextField(first: false, last: false),
                              OtpTextField(first: false, last: true),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: Get.width * 0.06),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Resend OTP',
                              style: MyTextStyles.hintText.copyWith(
                                fontSize: 12,
                                decoration: TextDecoration.underline,
                                color: AppColors.ashTextColor,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.04,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Get.toNamed(Routes.LOGIN);
                          },
                          child: Container(
                            height: Get.height * 0.06,
                            width: Get.width * 0.45,
                            decoration: BoxDecoration(
                              color: AppColors.buttonColor,
                              borderRadius:
                                  BorderRadius.circular(Get.width / 40),
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
                            onTap: () {},
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Don’t have an account yet? ',
                                    style: MyTextStyles.hintText,
                                  ),
                                  TextSpan(
                                    text: 'Create one',
                                    style: MyTextStyles.hintText.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.buttontxtColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
