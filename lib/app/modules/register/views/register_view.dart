import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:vidhya_hub/app/common/styles/app_text_style.dart';
import 'package:vidhya_hub/app/common/styles/colors.dart';
import 'package:vidhya_hub/app/common/widgets/text_field.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    final h = Get.height;
    final w = Get.width;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: h * 0.04,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/vidyahub.svg',
                    height: h * 0.03,
                    width: w * 0.10,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: h * 0.04,
                ),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: h * 0.15,
                      ),
                      child: Container(
                        height: h * 0.65,
                        width: w * 0.85,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(w / 30),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: h * 0.035,
                            ),
                            Text(
                              "Let's Create Your Account",
                              style: MyTextStyles.loginHeader,
                            ),
                            SizedBox(
                              height: h * 0.02,
                            ),
                            CustomTextField(
                              controller: controller.fullname,
                              hintText: 'Full Name',
                              keyboardType: TextInputType.name,
                            ),
                            SizedBox(
                              height: h * 0.005,
                            ),
                            CustomTextField(
                              controller: controller.emailId,
                              hintText: 'Email Id',
                              keyboardType: TextInputType.emailAddress,
                            ),
                            SizedBox(
                              height: h * 0.005,
                            ),
                            CustomTextField(
                              controller: controller.phoneController,
                              hintText: 'Phone Number',
                              keyboardType: TextInputType.number,
                            ),
                            SizedBox(
                              height: h * 0.005,
                            ),
                            CustomTextField(
                              suffixIcon: Icon(
                                Icons.arrow_drop_down_sharp,
                                size: w / 15,
                              ),
                              hintText: 'Grade',
                            ),
                            SizedBox(
                              height: h * 0.005,
                            ),
                            CustomTextField(
                              suffixIcon: Icon(
                                Icons.arrow_drop_down_sharp,
                                size: w / 15,
                              ),
                              hintText: 'Exam Target',
                            ),
                            SizedBox(
                              height: h * 0.05,
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
                                    "Create Account",
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
                                        text: 'Already have an account? ',
                                        style: MyTextStyles.hintText,
                                      ),
                                      TextSpan(
                                        text: 'Login',
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
                    ),
                    Positioned(
                      left: w * 0.15,
                      child: SvgPicture.asset(
                        'assets/auth/children.svg',
                        height: h * 0.18,
                        width: w * 0.25,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
