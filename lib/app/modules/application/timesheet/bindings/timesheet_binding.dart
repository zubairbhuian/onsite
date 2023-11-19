import 'package:get/get.dart';

import '../controllers/timesheet_controller.dart';

class TimesheetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TimesheetController>(
      () => TimesheetController(),
    );
  }
}
