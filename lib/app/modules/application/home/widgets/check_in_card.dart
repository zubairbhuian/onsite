import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/widgets/card.dart';

class CheckInCard extends StatelessWidget {
  final Function()? onTap;
  final String title;
  final String location;
  final String date;
  final bool isActive;
  const CheckInCard(
      {super.key,
      this.onTap,
      required this.title,
      required this.location,
      required this.date,  this.isActive =false});

  @override
  Widget build(BuildContext context) {
    return AppCard(
        onTap: onTap,
        child: Column(
          children: [
            // row 1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                    child: Text(
                  title,
                  style: kLabelLarge,
                )),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color:isActive?kPrimaryColor: kTextColorLight)),
                  child:isActive? const Center(
                      child: CircleAvatar(
                    radius: 6,
                    backgroundColor: kPrimaryColor,
                  )):null,
                )
              ],
            ),
            11.height,
            // row 2
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
                  location,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: kBodyMedium.copyWith(color: kTextColorLight),
                )),
              ],
            ),
            11.height,
            // row 3
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.calendar_month_outlined,
                  size: 20.sp,
                  color: kTextColorLight,
                ),
                8.width,
                Flexible(
                    child: Text(
                  date,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: kBodyMedium.copyWith(color: kTextColorLight),
                )),
              ],
            ),
          ],
        )).marginOnly(bottom: 6);
  }
}
