import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/routes/app_pages.dart';
import 'package:onsite/app/widgets/card.dart';
import 'package:onsite/app/widgets/custom_btn.dart';

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // row 1
        Row(
          children: [
            Expanded(
              child: Text(
                'Johen markes property',
                style: kLabelLarge,
              ),
            ),
            SvgPicture.asset("assets/icons/two_dot.svg")
          ],
        ),
        // row 2
        12.height,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on_outlined,
              size: 20.sp,
              color: kTextColorLight,
            ),
            8.width,
            Flexible(
                child: Text(
              "2972 Westheimer Rd. Santa Ana, Illinois",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: kBodyMedium.copyWith(color: kTextColorLight),
            )),
          ],
        ),

        // row 3
        12.height,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FaIcon(
              Icons.calendar_month_outlined,
              size: 20.sp,
              color: kTextColorLight,
            ),
            8.width,
            Flexible(
                child: Text(
              "2972 Westheimer Rd. Santa Ana, Illinois",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: kBodyMedium.copyWith(color: kTextColorLight),
            )),
          ],
        ),
        // row 4
        const Divider(
          color: kTextColorLight,
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: PrimaryBtn(
              padding: EdgeInsets.zero,
              height: 25,
              width: 50,
              onPressed: () {
                Get.toNamed(Routes.JOB_DETAILS);
              },
              style: kBodySmall,
              child: const Text("View")),
        )
      ],
    )).marginOnly(bottom: 16);
  }
}
