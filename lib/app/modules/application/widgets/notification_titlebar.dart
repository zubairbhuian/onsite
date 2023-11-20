import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/widgets/custom_dropdown.dart';

import '../profile/controllers/profile_controller.dart';

class NotificationTitleBar extends StatelessWidget {
  const NotificationTitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          // left
          Flexible(
            child: Row(
              children: [
                Text(
                  "Notification",
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                16.width,
                GetBuilder<ProfileController>(builder: (controller) {
                  return CustomDropdownButton(
                    value: controller.notificationValue,
                    data: controller.notificationDropdownList,
                    onChanged: (value) {
                      controller.notificationValue = value!;
                      controller.update();
                    },
                  );
                })
              ],
            ),
          ),
          // right
          Text(
            "Mark all as read",
            style: kBodyMedium.copyWith(color: kInfoColor),
          )
        ],
      ),
    );
  }
}
