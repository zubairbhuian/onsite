import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/modules/forgetPass/controllers/forget_pass_controller.dart';
import 'package:onsite/app/modules/forgetPass/views/password_changed_view.dart';
import 'package:onsite/app/widgets/appbar.dart';
import 'package:onsite/app/widgets/custom_btn.dart';
import 'package:onsite/app/widgets/custom_textfield.dart';
import 'package:onsite/app/widgets/popup_dialogs.dart';

class CreatNewPasswordView extends GetView<ForgetPassController> {
  const CreatNewPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('CreatNewPasswordView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  40.height,
                
                  //form
                    GetBuilder<ForgetPassController>(builder: (controller) {
                    return CustomTextField(

                      obscureText: controller.passObscure,
                      hintText: "Password",
                      prefixIcon:
                          const Icon(Icons.lock_outlined, color: kTextColor),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          controller.passObscure = !controller.passObscure;
                          controller.update();
                        },
                        child: controller.passObscure
                            ? const Icon(Icons.remove_red_eye_outlined,
                                color: kTextColor)
                            : const Icon(Icons.visibility_off_outlined,
                                color: kTextColor),
                      ),
                    );
                  }),
                     GetBuilder<ForgetPassController>(builder: (controller) {
                    return CustomTextField(

                      obscureText: controller.confirmPassObscure,
                      hintText: "Confirm password",
                      prefixIcon:
                          const Icon(Icons.lock_outlined, color: kTextColor),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: GestureDetector(
                          onTap: () {
                            controller.confirmPassObscure = !controller.confirmPassObscure;
                            controller.update();
                          },
                          child: controller.confirmPassObscure
                              ? const Icon(Icons.remove_red_eye_outlined,
                                  color: kTextColor)
                              : const Icon(Icons.visibility_off_outlined,
                                  color: kTextColor),
                        ),
                      ),
                    );
                  }),
                ],
              )),
            ),

            // bottom bar
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Center(
                  child: PrimaryBtn(
                      onPressed: () {
                        PopupDialog.showLoadingDialog();
                        // **** have to remove this delayed function in production ****
                        Future.delayed(const Duration(seconds: 2), () {
                          // page route
                          PopupDialog.closeLoadingDialog();
                          Get.to(() => const PasswordChangedView());
                        });
                      },
                      width: double.infinity,
                      child: const Text("Continue"))),
            )
          ],
        ),
      ),
   
    );
  }
}
