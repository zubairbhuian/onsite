import 'package:flutter/material.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/widgets/card.dart';

class ClientDetailsCard extends StatelessWidget {
  const ClientDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //row 1
        Row(
          children: [
            CircleAvatar(
              radius: 19,
              backgroundColor: kDisabledColor,
              child: Image.asset(
                'assets/images/client.png',
                fit: BoxFit.cover,
              ),
            ),
            8.width,
            Text(
              "Jane Cooper",
              style: kLabelLarge,
            ),
          ],
        ),

        // row 2
        Divider(
          color: kDisabledColor.withOpacity(.5),
          height: 24,
        ),
        Text(
          "Email",
          style: kBodyMedium.copyWith(color: kTextColorLight),
        ),
        Text(
          "jonahbrainstorm@mail.com",
          style: kBodyMedium,
        ),
        12.height,
        Text(
          "Phone Numbers",
          style: kBodyMedium.copyWith(color: kTextColorLight),
        ),
        Text(
          "+1 26489021",
          style: kBodyMedium,
        ),
      ],
    ));
  }
}
