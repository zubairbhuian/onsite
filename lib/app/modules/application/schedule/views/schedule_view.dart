import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/modules/application/schedule/views/tabs/completed_tab.dart';
import 'package:onsite/app/modules/application/schedule/views/tabs/in_progress_tab.dart';
import 'package:onsite/app/modules/application/schedule/views/tabs/not_started_tab.dart';
import 'package:onsite/app/widgets/appbar.dart';

import '../controllers/schedule_controller.dart';

class ScheduleView extends GetView<ScheduleController> {
  const ScheduleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text("Today's Schedule"),
        centerTitle: true,
        isBackBtnShow: false,
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // *****  tabbar ****
            16.height,
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xffF1F2F9)),
              child: TabBar(
                  labelColor: kPrimaryColor,
                  labelStyle: kLabelMedium,
                  unselectedLabelStyle: kLabelMedium.copyWith(color: kTextColorLight),
                  labelPadding: const EdgeInsets.symmetric(vertical: 10),
                  dividerHeight: 0,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      return states.contains(MaterialState.focused)
                          ? null
                          : Colors.transparent;
                    },
                  ),
                  tabs: const [
                    Text('InProgress'),
                    Text('Not started'),
                    Text('Completed'),
                  ]),
            ),
            // ***** tab View ****
            const Expanded(
                child: TabBarView(children: [
              InProgressTab(),
              NotStartedTab(),
              CompletedTab(),
            ]))
          ],
        ),
      ),
    );
  }
}
