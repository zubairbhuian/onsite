import 'package:flutter/material.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/modules/JobDetails/widgets/costing_card.dart';
import 'package:onsite/app/widgets/custom_btn.dart';

class CostingTab extends StatelessWidget {
  const CostingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(left: 25,right: 25,top: 60,bottom: 10),
            child: Column(children: List.generate(5, (index) => const CostingCard()),),
          ),
        ),
        // btn
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          height: 80,
          decoration: BoxDecoration(color: kWhite, boxShadow: [kbtnShadow]),
          child: Row(
            children: [
              Expanded(
                  child: PrimaryBtn(
                onPressed: () {},
                padding: EdgeInsets.zero,
                child: const Text("Check in"),
              )),
              16.width,
              Expanded(
                  child: OutLineBtn(
                onPressed: () {},
                padding: EdgeInsets.zero,
                child: const Text("Add Cost"),
              )),
            ],
          ),
        )
      ],
    );
  }
}
