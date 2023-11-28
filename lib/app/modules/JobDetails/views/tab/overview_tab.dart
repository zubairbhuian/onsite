import 'package:flutter/material.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/modules/JobDetails/widgets/address_card.dart';
import 'package:onsite/app/modules/JobDetails/widgets/client_details_card.dart';
import 'package:onsite/app/widgets/custom_btn.dart';
import 'package:onsite/app/widgets/custom_expansion_tile.dart';

class OverviewTab extends StatelessWidget {
  const OverviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding:
                const EdgeInsets.only(left: 25, right: 25, top: 60, bottom: 10),
            // primary: false,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
              const AddressCard(),  
              16.height,
              Text(
                'About',
                style: kLabelLarge,
              ),
              8.height,
              const CustomExpansionTile(
                title: "Equipment",
                description: "",
              ),
              const CustomExpansionTile(
                title: "Hard Materials",
                description: "",
              ),
              18.height,
              Text(
                'Client Details',
                style: kLabelLarge,
              ),
              8.height,
              const ClientDetailsCard(),
              12.height,
              // Complete project btn
              Center(
                child: OutLineBtn(
                  onPressed: () {},
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: const Text("Complete project"),
                ),
              )
            ]),
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
