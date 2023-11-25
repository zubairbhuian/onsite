import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/widgets/card.dart';
import 'package:onsite/app/widgets/custom_btn.dart';

class TodayWorkingHoursCard extends StatelessWidget {
  const TodayWorkingHoursCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      // row 1
      Text(
        'Today working hours',
        style: kLabelLarge,
      ),
      // row 2
      12.height,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
              child: Text(
            "Working hours",
            style: kBodyMedium,
          )),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                 const FaIcon(FontAwesomeIcons.stopwatch,color: kTextColorLight),
                12.width,
                Flexible(
                    child: Text(
                  "0h 00min",
                  style: kLabelMedium,
                )),
              ],
            ),
          )
        ],
      ),
      // row 3
      26.height,
      Row(
        children: [
          CircleAvatar(
            radius: 14.sp,
            backgroundColor: const Color(0xffF1F2F9),
          ),
          const Flexible(
              child: Divider(
            thickness: 2,
            color: Color(0xffF1F2F9),
          )),
          CircleAvatar(
            radius: 14.sp,
            backgroundColor: const Color(0xffF1F2F9),
          ),
        ],
      ),
      //row 4
      6.height,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
              child: Text(
            "00:00",
            style: kBodyMedium,
          )),
          Flexible(
              child: Text(
            "00:00",
            style: kLabelMedium,
          ))
        ],
      ),
      //row 5
      19.height,
      const PrimaryBtn(width: double.infinity, child: Text("Clock in"))
    ]));
  }
}
