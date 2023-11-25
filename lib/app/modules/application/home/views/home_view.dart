import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/modules/application/home/widgets/home_job_progress.dart';
import 'package:onsite/app/modules/application/home/widgets/specific_job_card.dart';
import 'package:onsite/app/modules/application/home/widgets/today_working_hours_card.dart';
import 'package:onsite/app/widgets/appbar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('HomeView'),
        isPrimary: true,
        centerTitle: true,
        preferredHeight: 155,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ***** Calender *******
            Container(
              height: 100,
              width: double.infinity,
              color: kRed,
            ),
            // ***** working hours *******
            16.height,
            const TodayWorkingHoursCard(),
            // ***** specific job *******
            16.height,
            const SpecificJobCard(),
            // ***** home job progress *******
            16.height,
           const HomeJobProgress()
            // ***** *******
          ],
        ),
      ),
    );
  }
}
