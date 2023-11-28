import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/widgets/card.dart';


class TimesheetCard extends StatelessWidget {
  const TimesheetCard({super.key});

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
              child: Divider(color: kTextColorLight,),
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
