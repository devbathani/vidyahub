import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidhya_hub/app/modules/assignment/bindings/assignment_binding.dart';
import 'package:vidhya_hub/app/modules/assignment/views/assignment_view.dart';
import 'package:vidhya_hub/app/modules/home/views/home_view.dart';
import 'package:vidhya_hub/app/modules/practise/bindings/practise_binding.dart';
import 'package:vidhya_hub/app/modules/practise/views/practise_view.dart';
import 'package:vidhya_hub/app/modules/profile/views/profile_view.dart';

import '../../../routes/app_pages.dart';

class BottomviewController extends GetxController {
  var tabIndex = 0.obs;

  final pages = <String>[
    Routes.HOME,
    Routes.PRACTISE,
    Routes.ASSIGNMENT,
    Routes.PROFILE,
  ];

  void changePage(int index) {
    if (index != tabIndex.value) {
      tabIndex.value = index;
      Get.toNamed(pages[index], id: 1);
    }
  }

  Route onGenerateRoute(RouteSettings settings) {
    if (settings.name == Routes.HOME) {
      return GetPageRoute(
        settings: settings,
        page: () => HomeView(),
      );
    } else if (settings.name == Routes.PRACTISE) {
      return GetPageRoute(
        settings: settings,
        page: () => PractiseView(),
        binding: PractiseBinding(),
      );
    } else if (settings.name == Routes.ASSIGNMENT) {
      return GetPageRoute(
        settings: settings,
        page: () => AssignmentView(),
        binding: AssignmentBinding(),
      );
    } else if (settings.name == Routes.PROFILE) {
      return GetPageRoute(
        settings: settings,
        page: () => ProfileView(),
      );
    } else {
      return GetPageRoute(
        settings: settings,
        page: () => HomeView(),
      );
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
