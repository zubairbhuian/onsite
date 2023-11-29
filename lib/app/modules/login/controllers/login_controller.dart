import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get to => Get.find();

  bool isLoaded = true;
  bool isClicked = false; //dual click checker

  bool isReadyToRegester = false;
  bool passObscure = true;
  final emailOrUserNameController = TextEditingController();
  final passwordController = TextEditingController();


}
