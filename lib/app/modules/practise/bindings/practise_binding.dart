import 'package:get/get.dart';

import '../controllers/practise_controller.dart';

class PractiseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PractiseController>(
      () => PractiseController(),
    );
  }
}
