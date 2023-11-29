import 'package:flutter/material.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/modules/JobDetails/widgets/sheet_divider.dart';
import 'package:onsite/app/modules/JobDetails/widgets/timesheet_card.dart';
import 'package:onsite/app/widgets/progress_container.dart';

class TimeSheetBottomSheet {
  static Widget timesheetDetail() {
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
              child: Text(
                "7h 30m",
                style: kHeadlineMedium.copyWith(color: kPrimaryColor),
              ),
            )),
          ),
          32.height,
          // row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      "Check in",
                      style: kBodyMedium.copyWith(color: kTextColorLight),
                    ),
                    Text(
                      "9:30 am",
                      style: kLabelLarge,
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  children: [
                    Text(
                      "Check Out",
                      style: kBodyMedium.copyWith(color: kTextColorLight),
                    ),
                    Text(
                      "7:00 pm",
                      style: kLabelLarge,
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  children: [
                    Text(
                      "Break hours",
                      style: kBodyMedium.copyWith(color: kTextColorLight),
                    ),
                    Text(
                      "1h:15min",
                      style: kLabelLarge,
                    ),
                  ],
                ),
              )
            ],
          ),
          16.height,
          TimesheetCard(
            title: Text(
              "Job name here",
              style: kLabelLarge,
            ),
            location: '3891 Ranchview Dr. Richardson, California',
          ),
          TimesheetCard(
            title: Text(
              "Job name here",
              style: kLabelLarge,
            ),
            location: '3891 Ranchview Dr. Richardson, California',
          ),

        ],
      ),
    );
  }
}
