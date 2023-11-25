import 'package:flutter/material.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/modules/application/schedule/widgets/schedule_card.dart';
import 'package:onsite/app/widgets/custom_textfield.dart';

class InProgressTab extends StatelessWidget {
  const InProgressTab({super.key});

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
