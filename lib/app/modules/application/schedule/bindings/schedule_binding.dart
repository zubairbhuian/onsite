import 'package:get/get.dart';

import '../controllers/schedule_controller.dart';

class ScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ScheduleController());
  }
}
