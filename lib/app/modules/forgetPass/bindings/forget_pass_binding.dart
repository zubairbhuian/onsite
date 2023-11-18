import 'package:get/get.dart';

import '../controllers/forget_pass_controller.dart';

class ForgetPassBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgetPassController>(
      () => ForgetPassController(),
    );
  }
}
