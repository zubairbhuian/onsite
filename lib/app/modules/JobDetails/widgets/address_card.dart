import 'package:flutter/material.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/widgets/card.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
        onTap: () {},
        child: Row(
          children: [
            // text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Address",
                    style: kBodyMedium.copyWith(color: kTextColorLight),
                  ),
                  Text(
                    "1901 Thornridge Cir. Shiloh, Hawaii 81063",
                    style: kBodyMedium,
                  ),
                ],
              ),
            ),

            16.height,
            // map
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [kAppbarShadow],
                  image: const DecorationImage(
                      image: AssetImage("assets/images/map.png"))),
            )
          ],
        ));
  }
}
