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
                    'assets/auth/boy.svg',
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
                            'Enter Your Phone Number',
                            style: MyTextStyles.loginHeader,
                          ),
                        ),
                        CustomTextField(
                          controller: controller.phoneController,
                          hintText: 'Phone Number',
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
