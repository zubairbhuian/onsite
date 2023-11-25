import 'package:flutter/material.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/widgets/custom_textfield.dart';

import '../../widgets/schedule_card.dart';

class CompletedTab extends StatelessWidget {
  const CompletedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),
      child: Column(
        children: [
          // **** search *****
          CustomTextField(
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 12),
              child: Icon(Icons.search,size: 30,color: kTextColorLight,),
            )),
          // **** card *****
          ScheduleCard(),
          ScheduleCard(),
        ],
      ),
    );
  }
}