// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import '../modules/forgetPass/bindings/forget_pass_binding.dart';
import '../modules/forgetPass/views/forget_pass_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';

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
  ];
}
