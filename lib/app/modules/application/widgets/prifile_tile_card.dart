import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onsite/app/core/config/theme/color.dart';

class ProfileTileCard extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final Color? color;
  final bool isDivider;
  const ProfileTileCard(
      {super.key, required this.title, this.onTap, this.color,  this.isDivider=true});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          contentPadding: EdgeInsets.zero,
          title: Text(
            title,
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: color ?? const Color(0xff636778)),
          ),
          trailing: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 16,
            ),
          ),
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
