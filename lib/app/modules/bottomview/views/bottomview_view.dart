import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vidhya_hub/app/common/widgets/app_bar.dart';
import 'package:vidhya_hub/app/modules/bottomview/views/widget/bottom_navigation.dart';
import 'package:vidhya_hub/app/routes/app_pages.dart';

import '../controllers/bottomview_controller.dart';

class BottomviewView extends GetView<BottomviewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: Routes.HOME,
        onGenerateRoute: controller.onGenerateRoute,
      ),
      bottomNavigationBar: MyBottomBar(),
    );
  }
}
