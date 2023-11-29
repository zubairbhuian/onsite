import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onsite/app/modules/application/home/views/home_view.dart';
import 'package:onsite/app/modules/application/job_cost/views/job_cost_view.dart';
import 'package:onsite/app/modules/application/profile/views/profile_view.dart';
import 'package:onsite/app/modules/application/timesheet/views/timesheet_view.dart';

import '../schedule/views/schedule_view.dart';

class ApplicationController extends GetxController {
  static ApplicationController get to => Get.find();

    int pageIndex = 2;
  bool isActiveExpert = false;
  List<Widget> pages = [
    const HomeView(),
    const ScheduleView(),
    const TimesheetView(),
    const JobCostView(),
    const ProfileView(),
  ];

}
