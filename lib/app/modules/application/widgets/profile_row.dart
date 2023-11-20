


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onsite/app/core/config/theme/color.dart';

class ProfileRow extends StatelessWidget {
  final String title;
  final String value;
  final bool isDivider;
  const ProfileRow(
      {super.key, required this.title,   this.isDivider=true, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 10),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Flexible(child: Text(title,style: TextStyle(
              fontSize: 16.sp,
              color: kTextColorLight
            ),)),
            Flexible(child: Text(value,style: TextStyle(
              fontSize: 14.sp,
              color: kTextColor
            ))),
                   ],),
         ),
        if(isDivider)
        const Divider(
          color: kDisabledColor,
          thickness: .79,
        )
      ],
    );
  }
}
