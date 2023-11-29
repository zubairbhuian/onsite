import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/modules/application/home/widgets/home_job_progress.dart';
import 'package:onsite/app/modules/application/home/widgets/specific_job_card.dart';
import 'package:onsite/app/modules/application/home/widgets/today_working_hours_card.dart';
import 'package:onsite/app/widgets/appbar.dart';
import 'package:table_calendar/table_calendar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Home",
          style: kTitleMedium.copyWith(color: kWhite),
        ),
        isBackBtnShow: false,
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
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
              calendarFormat: CalendarFormat.week,
              availableCalendarFormats: const {CalendarFormat.week: 'Week'},
              daysOfWeekStyle: const DaysOfWeekStyle(
                weekdayStyle: TextStyle(color: kDisabledColor),
                weekendStyle: TextStyle(color: kDisabledColor),
              ),
              calendarStyle: CalendarStyle(
                todayDecoration: const BoxDecoration(
                    color: Color(0xffD6EDFF), shape: BoxShape.circle),
                todayTextStyle: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 15.sp),
              ),
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
