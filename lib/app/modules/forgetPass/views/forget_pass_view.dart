import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/modules/forgetPass/views/verification_code_view.dart';
import 'package:onsite/app/widgets/appbar.dart';
import 'package:onsite/app/widgets/custom_btn.dart';
import 'package:onsite/app/widgets/custom_textfield.dart';
import 'package:onsite/app/widgets/popup_dialogs.dart';

import '../controllers/forget_pass_controller.dart';

class ForgetPassView extends GetView<ForgetPassController> {
  const ForgetPassView({Key? key}) : super(key: key);
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
                    "Forgot Password",
                    style: kHeadlineMedium,
                  ),
                  8.height,
                  Text(
                    "Select with contact details should we use to reset yout password",
                    style: kBodyLarge.copyWith(color: kTextColorLight),
                  ),
                  40.height,
                  const CustomTextField(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
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
                          Get.to(() => const VerificationCodeView());
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
