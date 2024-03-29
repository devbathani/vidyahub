import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:vidhya_hub/app/common/styles/colors.dart';
import 'package:vidhya_hub/app/modules/bottomview/views/helper.dart';

PreferredSizeWidget myAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(
      Get.height * 0.07,
    ),
    child: AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: AppColors.backgroundColor,
      title: SvgPicture.asset(
        'assets/icons/vidyahub.svg',
        height: Get.height * 0.025,
        width: Get.width * 0.10,
        fit: BoxFit.cover,
      ),
      centerTitle: true,
      leadingWidth: Get.width * 0.13,
      leading: Builder(builder: (context) {
        return InkWell(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Padding(
            padding: EdgeInsets.only(
              left: Get.width * 0.06,
              // top: Get.height * 0.02,
            ),
            child: SvgPicture.asset(
              HomeAssets.drawer,
            ),
          ),
        );
      }),
      actions: [
        InkWell(
          onTap: () {
            // Get.toNamed(RoutesName.searchPage);
          },
          child: Padding(
            padding: EdgeInsets.only(right: Get.width * 0.01),
            child: SvgPicture.asset(
              HomeAssets.bookmark,
            ),
          ),
        ),
        SizedBox(
          width: Get.width * 0.05,
        ),
        InkWell(
          onTap: () {
            // Get.toNamed(RoutesName.searchPage);
          },
          child: Padding(
            padding: EdgeInsets.only(right: Get.width * 0.01),
            child: SvgPicture.asset(
              HomeAssets.notification,
            ),
          ),
        ),
        SizedBox(
          width: Get.width * 0.035,
        ),
      ],
    ),
  );
}
