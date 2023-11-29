import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/modules/JobDetails/widgets/timesheet_card.dart';
import 'package:onsite/app/modules/application/timesheet/widgets/timesheet_bottomsheet.dart';
import 'package:onsite/app/widgets/appbar.dart';
import 'package:table_calendar/table_calendar.dart';

import '../controllers/timesheet_controller.dart';

class TimesheetView extends GetView<TimesheetController> {
  const TimesheetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('Time Sheet'),
        isBackBtnShow: false,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // calender
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [kAppbarShadow]),
              child: TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
                availableCalendarFormats: const {CalendarFormat.month: 'Month'},
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
            ),
            15.height,
            // Timesheet List
            Text(
              "Timesheet",
              style: kLabelLarge,
            ),
            11.height,
            ...List.generate(
                8,
                (index) => TimesheetCard(
                      isCheckOut: index == 0 ? false : true,
                      title: Row(
                        children: [
                          const Icon(
                            Icons.calendar_month_sharp,
                            size: 19,
                            color: kTextColor,
                          ),
                          8.width,
                          Expanded(
                              child: Text(
                            "24 Oct  2023 ",
                            style: kLabelLarge,
                          ))
                        ],
                      ),
                      onTap: () {
                        // ***** Bottom Sheet *****
                        showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            backgroundColor: kWhite,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12)),
                            ),
                            builder: (context) {
                              return SizedBox(
                                  width: double.infinity,
                                  height: 570 +
                                      MediaQuery.of(context).viewInsets.bottom,
                                  child:
                                      TimeSheetBottomSheet.timesheetDetail());
                            });
                      },
                    ))
          ],
        ),
      ),
    );
  }
}
