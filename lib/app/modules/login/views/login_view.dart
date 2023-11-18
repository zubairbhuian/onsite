import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/icons.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/routes/app_pages.dart';
import 'package:onsite/app/widgets/custom_btn.dart';
import 'package:onsite/app/widgets/custom_textfield.dart';
import 'package:onsite/app/widgets/popup_dialogs.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 32),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // logo
              40.height,
              SvgPicture.asset(Logos.appLogoSVG),
              // titile
              24.height,
              Text(
                "Hey! Welcome back",
                style: kHeadlineMedium,
              ),
              8.height,
              Text(
                "Sign In to your account",
                style: kBodyLarge,
              ),
              //form
              32.height,
              Form(
                  child: Column(
                children: [
                  const CustomTextField(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                  GetBuilder<LoginController>(builder: (controller) {
                    bool isHide = controller.passObscure;
                    return CustomTextField(
                      controller: controller.passwordController,
                      obscureText: isHide,
                      hintText: "Password",
                      prefixIcon:
                          const Icon(Icons.lock_outlined, color: kTextColor),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          controller.passObscure = !controller.passObscure;
                          controller.update();
                        },
                        child: isHide
                            ? const Icon(Icons.remove_red_eye_outlined,
                                color: kTextColor)
                            : const Icon(Icons.visibility_off_outlined,
                                color: kTextColor),
                      ),
                    );
                  }),
                  Container(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                        onTap: () {
                          // Go to Forget Password page
                          Get.toNamed(Routes.FORGET_PASS);
                        },
                        child:  Text("Forget Password?",style: kBodyLarge.copyWith(color: kPrimaryColor),)),
                  ),
                  24.height,
                  GetBuilder<LoginController>(builder: (controller) {
                    bool isClicked = controller.isClicked;
                    return PrimaryBtn(
                      width: double.infinity,
                      onPressed: isClicked
                          ? null
                          : () {
                              PopupDialog.showLoadingDialog();
                              Future.delayed(const Duration(seconds: 3), () {
                                PopupDialog.closeLoadingDialog();
                              });
                            },
                      child: isClicked
                          ? SpinKitWave(
                              color: kWhite, // Color of the waves
                              size: 16.sp, // Size of the loading animation
                            )
                          : const Text("Sign In"),
                    );
                  }),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
