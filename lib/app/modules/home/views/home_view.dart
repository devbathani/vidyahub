import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:vidhya_hub/app/common/styles/app_text_style.dart';
import 'package:vidhya_hub/app/common/styles/colors.dart';

import '../../../common/styles/colors.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    final h = Get.height;
    final w = Get.width;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: h * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: w * 0.30,
            ),
            child: Text(
              "Start Learning!",
              style: MyTextStyles.loginHeader.copyWith(
                fontSize: w / 19.5,
              ),
            ),
          ),
          SizedBox(
            height: h * 0.05,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: w * 0.05),
            child: Container(
              height: h * 0.65,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: w * 0.02,
                ),
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: controller.model.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: w * 0.08,
                    mainAxisSpacing: h * 0.05,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      height: h * 0.04,
                      width: w * 0.06,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(w / 35),
                      ),
                      child: Stack(
                        children: [
                          SvgPicture.asset(
                            controller.model[index].image,
                            // fit: BoxFit.cover,
                            height: h * 0.20,
                            width: w * 0.25,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: h * 0.02),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                controller.model[index].pages,
                                style: MyTextStyles.hintText.copyWith(
                                  fontSize: w / 27.5,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
