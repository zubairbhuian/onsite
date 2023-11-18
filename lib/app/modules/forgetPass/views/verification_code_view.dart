import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/modules/forgetPass/controllers/forget_pass_controller.dart';
import 'package:onsite/app/modules/forgetPass/views/creat_new_password_view.dart';
import 'package:onsite/app/widgets/appbar.dart';
import 'package:onsite/app/widgets/custom_btn.dart';
import 'package:onsite/app/widgets/popup_dialogs.dart';
import 'package:pinput/pinput.dart';

class VerificationCodeView extends GetView<ForgetPassController> {
  const VerificationCodeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('VerificationCodeView'),
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

                  const Pinput(
                    androidSmsAutofillMethod: AndroidSmsAutofillMethod.none,
                    // controller: pinController,

                  )
                  //form
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
                        // **** have to remove this delayed function ****
                        Future.delayed(const Duration(seconds: 2), () {
                          // page route
                          PopupDialog.closeLoadingDialog();
                          Get.to(() => const CreatNewPasswordView());
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
