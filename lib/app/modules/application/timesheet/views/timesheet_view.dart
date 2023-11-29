import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/modules/JobDetails/widgets/timesheet_card.dart';
import 'package:onsite/app/widgets/appbar.dart';

import '../controllers/timesheet_controller.dart';

class TimesheetView extends GetView<TimesheetController> {
  const TimesheetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppBar(
        title: Text('Timesheet'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 24,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // calender 
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                color: kWhite
                ,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [kAppbarShadow]
              ),
            ),
            15.height,
            // Timesheet List
            Text("Timesheet",style: kLabelLarge,),
            11.height,
            ...List.generate(8, (index) =>  TimesheetCard(isCheckOut: index==0? false:true,))
        ],),),
    );
  }
}
