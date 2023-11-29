import 'package:flutter/material.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/widgets/card.dart';
import 'package:onsite/app/widgets/network_img.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppCard(
            onTap: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // profile pic
                ClipRRect(
                  borderRadius: BorderRadius.circular(800),
                  child: const CircleAvatar(
                    radius: 16,
                    child: NetworkImg(
                      "",
                      errUrl: 'assets/images/default_user.png',
                      width: 32,
                      height: 32,
                    ),
                  ),
                ),
                16.width,
                // text column
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dennis Nedry commented on Isla Nublar SOC2 compliance report",
                        style: kBodyMedium,
                      ),
                      Text(
                        "Last Wednesday at 9:42 AM",
                        style: kBodySmall.copyWith(color: kTextColorLight),
                      ),
                    ],
                  ),
                )
              ],
            )),
        10.height
      ],
    );
  }
}
