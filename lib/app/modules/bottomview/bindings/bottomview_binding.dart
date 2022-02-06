import 'package:get/get.dart';

import '../controllers/bottomview_controller.dart';

class BottomviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomviewController>(
      () => BottomviewController(),
    );
  }
}
