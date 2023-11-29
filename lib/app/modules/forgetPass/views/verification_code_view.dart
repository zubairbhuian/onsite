import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
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
      appBar: const CustomAppBar(),
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
                    "Verification Code",
                    style: kHeadlineMedium,
                  ),
                  8.height,
                  Text(
                    "Enter the verification code that we have sent to your phone number",
                    style: kBodyLarge.copyWith(color: kTextColorLight),
                  ),
                  40.height,
                  Center(
                    child: Pinput(
                        androidSmsAutofillMethod: AndroidSmsAutofillMethod.none,
                        keyboardType: TextInputType.number,
                        defaultPinTheme: PinTheme(
                          width: 56,
                          height: 56,
                          textStyle: const TextStyle(
                              fontSize: 20,
                              color: kTextColorLight,
                              fontWeight: FontWeight.w600),
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xffACB0C3)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        )

                        // controller: pinController,
                        ),
                  ),
                  24.height,
                  Center(
                    child: GestureDetector(
                      onTap: (){},
                      child: Text(
                        "Resend Code",
                        style: kLabelMedium.copyWith(color: kPrimaryColor),
                      ),
                    ),
                  )
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
                        Future.delayed(const Duration(seconds: 1), () {
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
