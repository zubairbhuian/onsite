import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/widgets/card.dart';
import 'package:onsite/app/widgets/custom_btn.dart';

class TimesheetCard extends StatelessWidget {
  final bool isCheckOut;
  const TimesheetCard({super.key,this.isCheckOut =true});

  @override
  Widget build(BuildContext context) {
    return AppCard(
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // row 1
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.calendar_month_sharp,
                        size: 19,
                        color: kTextColor,
                      ),
                      8.width,
                      Expanded(
                          child: Text(
                        "24 Oct  2023 ",
                        style: kLabelLarge,
                      ))
                    ],
                  ),
                ),
                // Check out btn
                if(!isCheckOut)
                PrimaryBtn(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    height: 25,
                    color: kDangerColor,
                    onPressed: () {
                      // Get.toNamed(Routes.JOB_DETAILS);
                    },
                    style: kBodySmall,
                    child: const Text("Check out")),
              ],
            ),
            // row 2
            11.height,
            Row(
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 65),
                  child: Text(
                    "09:15 am",
                    style: kBodySmall.copyWith(color: kTextColorLight),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Expanded(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Divider(
                    color: kTextColorLight,
                  ),
                )),
                ConstrainedBox(
                  constraints: const BoxConstraints(minWidth: 65),
                  child: Text(
                    "09:15 am",
                    style: kBodySmall.copyWith(color: kTextColorLight),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 75),
                  child: Text(
                    "8 hours total",
                    style: kBodySmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        )).marginOnly(bottom: 6);
  }
}
