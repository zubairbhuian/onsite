import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/modules/forgetPass/controllers/forget_pass_controller.dart';
import 'package:onsite/app/routes/app_pages.dart';
import 'package:onsite/app/widgets/custom_btn.dart';

class PasswordChangedView extends GetView<ForgetPassController> {
  const PasswordChangedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // images
                  SizedBox(
                    height: 200.h,
                  ),
                  Image.asset(
                    "assets/images/password_changed.png",
                    width: 173.w,
                  ),
                  // titile

                  24.height,
                  Text(
                    "Password Changed",
                    style: kHeadlineMedium,
                  ),
                  12.height,
                  Text(
                    "Password changed succesfully, you can login again with new password",
                    style: kBodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  40.height,
                  //form
                ],
              ),
            ),

            // bottom bar
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Center(
                  child: PrimaryBtn(
                      onPressed: () {
                        // go to home
                        Get.offAllNamed(Routes.LOGIN);
                      },
                      width: double.infinity,
                      child: const Text("Login"))),
            )
          ],
        ),
      ),
    );
  }
}
