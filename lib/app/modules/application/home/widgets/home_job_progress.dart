import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/widgets/card.dart';

class HomeJobProgress extends StatelessWidget {
  const HomeJobProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      // row 1
      Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const FaIcon(FontAwesomeIcons.stopwatch, color: kTextColorLight),
          12.width,
          Flexible(
              child: Text(
            "4h 02min",
            style: kLabelMedium.copyWith(color: kSuccessColor),
          )),
        ],
      ),
      // row 2
      12.height,
      Text(
        'Johen markes property',
        style: kLabelLarge,
      ),
      // row 3
      10.height,
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FaIcon(Icons.location_on_outlined,
              size: 20.sp, color: kTextColorLight),
          8.width,
          Flexible(
              child: Text(
            "Project name",
            style: kBodyMedium.copyWith(color: kTextColorLight),
          )),
        ],
      ),
      // row 4
      10.height,
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
            " 23 Oct - 08:00 PM  Starting date ",
            style: kBodyMedium.copyWith(color: kTextColorLight),
          )),
        ],
      ),
    ]));
  }
}
