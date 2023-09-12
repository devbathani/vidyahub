import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:vidhya_hub/app/modules/bottomview/controllers/bottomview_controller.dart';

import '../../../../common/styles/colors.dart';
import '../helper.dart';

class MyBottomBar extends GetView<BottomviewController> {
  const MyBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: AppColors.whiteColor,
      ),
      child: SizedBox(
        height: Get.height * 0.085,
        child: Obx(
          () => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            currentIndex: controller.tabIndex.value,
            onTap: controller.changePage,
            unselectedItemColor: AppColors.buttonColor,
            selectedItemColor: AppColors.tabsColor,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  HomeAssets.home,
                  color: controller.tabIndex.value == 0
                      ? AppColors.tabsColor
                      : AppColors.buttonColor,
                ),
                label: 'Home',  
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  HomeAssets.practise,
                  color: controller.tabIndex.value == 1
                      ? AppColors.tabsColor
                      : AppColors.buttonColor,
                ),
                label: 'Practise',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  HomeAssets.assignment,
                  color: controller.tabIndex.value == 2
                      ? AppColors.tabsColor
                      : AppColors.buttonColor,
                ),
                label: 'Assignment',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  HomeAssets.profile,
                  color: controller.tabIndex.value == 3
                      ? AppColors.tabsColor
                      : AppColors.buttonColor,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
