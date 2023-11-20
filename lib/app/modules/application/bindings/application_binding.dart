import 'package:get/get.dart';
import 'package:onsite/app/modules/application/home/controllers/home_controller.dart';
import 'package:onsite/app/modules/application/job_cost/controllers/job_cost_controller.dart';
import 'package:onsite/app/modules/application/profile/controllers/profile_controller.dart';
import 'package:onsite/app/modules/application/schedule/controllers/schedule_controller.dart';

import '../controllers/application_controller.dart';

class ApplicationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ApplicationController());
    Get.put(HomeController());
    Get.put(ScheduleController());
    Get.put(JobCostController());
    Get.put(ProfileController());
  }
}
