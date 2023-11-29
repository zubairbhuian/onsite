import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/modules/JobDetails/widgets/sheet_divider.dart';
import 'package:onsite/app/modules/JobDetails/widgets/timesheet_card.dart';
import 'package:onsite/app/widgets/card.dart';
import 'package:onsite/app/widgets/progress_container.dart';

class HomeBottomSheet {
  static Widget checkin() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        children: [
          const SheetDivider(),
          // pregress container
          ProgressContainer(
            child: FittedBox(
                child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [
                  Text(
                    "Start",
                    style: kHeadlineMedium.copyWith(color: kPrimaryColor),
                  ),
                  Text(
                    "08:14 am",
                    style: kLabelMedium.copyWith(color: kTextColorLight),
                  ),
                ],
              ),
            )),
          ),
          32.height,
          // row 2
          AppCard(
              child: Row(
            children: [
              SvgPicture.asset("assets/icons/clock.svg"),
              8.width,
              Text(
                "Start time",
                style: kLabelMedium,
              ),
              Expanded(
                  child: Text(
                "Set start time manually",
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: kPrimaryColor,
                    decoration: TextDecoration.underline,
                    decorationColor: kPrimaryColor),
                textAlign: TextAlign.end,
              )),
            ],
          )),
          10.height,

          // row 4
             AppCard(
              child: Row(
            children: [
              SvgPicture.asset("assets/icons/clock.svg"),
              8.width,
              Text(
                "Job",
                style: kLabelMedium,
              ),
              Expanded(
                  child: Text(
                "Select job",
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: kPrimaryColor,
                    decoration: TextDecoration.underline,
                    decorationColor: kPrimaryColor),
                textAlign: TextAlign.end,
              )),
            ],
          ))
        ],
      ),
    );
  }
}
