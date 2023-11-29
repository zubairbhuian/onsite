import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/widgets/card.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
        child: Column(
      children: [
        // row 1
        Row(
          children: [
            //left
            Expanded(
              child: Row(
                children: [
                  const Icon(
                    Icons.calendar_month_sharp,
                    size: 16,
                    color: kTextColor,
                  ),
                  8.width,
                  Expanded(
                      child: Text(
                    " 23 Oct  2023 ",
                    style: kBodySmall,
                  ))
                ],
              ),
            ),
            //right
            Row(
              children: [
                SvgPicture.asset("assets/icons/edite.svg"),
                8.width,
                SvgPicture.asset("assets/icons/delete.svg")
              ],
            )
          ],
        ),
        // row 2
        11.height,
        Text(
          _text,
          style: kBodyMedium,
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
        )
      ],
    ));
  }
}

String _text =
    'Lorem ipsum is a placeholder text commonly used to demonstrate the Lorem ipsum is a placeholder text commonly used to demonstrate the .Lorem ipsum is a placeholder text commonly used to demonstrate the used to demonstrate the .Lorem ipsum is a placeholder text commonly used to demonstrate the';
