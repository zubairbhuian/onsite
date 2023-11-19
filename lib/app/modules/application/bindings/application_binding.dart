import 'package:get/get.dart';

import '../controllers/application_controller.dart';

class ApplicationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ApplicationController());
  }
}
