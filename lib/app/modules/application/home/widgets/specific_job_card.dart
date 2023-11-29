import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/modules/application/home/views/check_in_view.dart';
import 'package:onsite/app/widgets/card.dart';
import 'package:onsite/app/widgets/custom_btn.dart';

class SpecificJobCard extends StatelessWidget {
  const SpecificJobCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Start working on specific job",
          style: kLabelLarge,
        ),
        Text(
          "First set your working sheet",
          style: kBodyMedium.copyWith(color: kTextColorLight),
        ),
        16.height,
        OutLineBtn(
            onPressed: () {
              Get.to(() => CheckInView());
            },
            width: double.infinity,
            child: const Text("Clock in"))
      ],
    ));
  }
}
