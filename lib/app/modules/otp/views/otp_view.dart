import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:vidhya_hub/app/modules/login/controllers/login_controller.dart';

import '../../../common/styles/app_text_style.dart';
import '../../../common/styles/colors.dart';
import '../../../common/widgets/otp_field.dart';
import '../../../routes/app_pages.dart';
import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  final loginController = Get.put(LoginController());
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
                  padding: EdgeInsets.only(top: Get.height * 0.05),
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
                  'assets/auth/girl.svg',
                  height: h * 0.25,
                  width: w * 0.45,
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                Container(
                  height: Get.height * 0.4,
                  width: Get.width * 0.85,
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
                        height: h * 0.01,
                      ),
                      Align(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'We have sent you an OTP on ',
                                style: MyTextStyles.hintText.copyWith(
                                  fontSize: w / 30,
                                  color: AppColors.txt,
                                ),
                              ),
                              TextSpan(
                                text:
                                    '+91-${loginController.phoneController.text} ',
                                style: MyTextStyles.hintText.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.buttonColor,
                                  fontSize: w / 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: w * 0.05,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        height: Get.height * 0.06,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.offAllNamed(Routes.BOTTOMVIEW);
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
