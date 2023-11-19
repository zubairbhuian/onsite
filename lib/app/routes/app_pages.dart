import 'package:get/get.dart';

import '../modules/application/bindings/application_binding.dart';
import '../modules/application/home/bindings/home_binding.dart';
import '../modules/application/home/views/home_view.dart';
import '../modules/application/job_cost/bindings/job_cost_binding.dart';
import '../modules/application/job_cost/views/job_cost_view.dart';
import '../modules/application/profile/bindings/profile_binding.dart';
import '../modules/application/profile/views/profile_view.dart';
import '../modules/application/schedule/bindings/schedule_binding.dart';
import '../modules/application/schedule/views/schedule_view.dart';
import '../modules/application/timesheet/bindings/timesheet_binding.dart';
import '../modules/application/timesheet/views/timesheet_view.dart';
import '../modules/application/views/application_view.dart';
import '../modules/forgetPass/bindings/forget_pass_binding.dart';
import '../modules/forgetPass/views/forget_pass_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.FORGET_PASS,
      page: () => const ForgetPassView(),
      binding: ForgetPassBinding(),
    ),
    GetPage(
      name: _Paths.APPLICATION,
      page: () => const ApplicationView(),
      binding: ApplicationBinding(),
      children: [
        GetPage(
          name: _Paths.HOME,
          page: () => const HomeView(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: _Paths.SCHEDULE,
          page: () => const ScheduleView(),
          binding: ScheduleBinding(),
        ),
        GetPage(
          name: _Paths.TIMESHEET,
          page: () => const TimesheetView(),
          binding: TimesheetBinding(),
        ),
        GetPage(
          name: _Paths.JOB_COST,
          page: () => const JobCostView(),
          binding: JobCostBinding(),
        ),
        GetPage(
          name: _Paths.PROFILE,
          page: () => const ProfileView(),
          binding: ProfileBinding(),
        ),
      ],
    ),
  ];
}
