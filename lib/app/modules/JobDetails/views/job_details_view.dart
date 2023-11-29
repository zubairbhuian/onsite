import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/modules/JobDetails/views/tab/costing_tab.dart';
import 'package:onsite/app/modules/JobDetails/views/tab/job_completed_tab.dart';
import 'package:onsite/app/modules/JobDetails/views/tab/notes_tab.dart';
import 'package:onsite/app/modules/JobDetails/views/tab/overview_tab.dart';
import 'package:onsite/app/modules/JobDetails/views/tab/timesheet_tab.dart';
import 'package:onsite/app/modules/JobDetails/widgets/job_detail_banner.dart';
import 'package:onsite/app/modules/JobDetails/widgets/sliver_appbar.dart';
import 'package:onsite/app/widgets/custom_tab.dart';

import '../controllers/job_details_controller.dart';
import '../widgets/custom_sliver_appbar.dart';

class JobDetailsView extends GetView<JobDetailsController> {
  const JobDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  //**** appbar *****
                  sliverAppbar(),
                  SliverList(
                      delegate: SliverChildListDelegate([
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 10),
                      child: const JobDetailBanner(),
                    )
                  ])),
                  //**** appbar body *****
                  SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        context),
                    sliver: customSliverAppBar(
                      innerBoxIsScrolled: innerBoxIsScrolled,
                      child: const JobDetailBanner(),
                      bottom: customTabBar(isScrollable: true, tabs: [
                        const Text("Overview"),
                        const Text("Costing"),
                        const Text("Timesheet"),
                        const Text("Notes"),
                        const Text("Completed"),
                      ]),
                    ),
                  ),
                ];
              },
              body:  TabBarView(
                children: [
                  OverviewTab(),
                  CostingTab(),
                  TimesheetTab(),
                  NotesTab(),
                  JobCompletedTab()
                ],
              )),
        ),
      ),
    );
  }
}
