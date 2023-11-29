import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/modules/JobDetails/widgets/timesheet_card.dart';
import 'package:onsite/app/modules/application/timesheet/widgets/timesheet_bottomsheet.dart';
import 'package:onsite/app/widgets/appbar.dart';

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
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [kAppbarShadow]),
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
                                  child: TimeSheetBottomSheet.timesheetDetail());
                            });
                      },
                    ))
          ],
        ),
      ),
    );
  }
}
