import 'package:get/get.dart';

import '../controllers/job_cost_controller.dart';

class JobCostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JobCostController>(
      () => JobCostController(),
    );
  }
}
