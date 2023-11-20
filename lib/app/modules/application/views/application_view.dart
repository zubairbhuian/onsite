import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:onsite/app/widgets/bottom_item.dart';
import 'package:onsite/app/widgets/custom_bottom_nav.dart';

import '../controllers/application_controller.dart';

class ApplicationView extends GetView<ApplicationController> {
  const ApplicationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ApplicationController>(builder: (controller) {
      return SafeArea(
        child: Scaffold(
            body: controller.pages[controller.pageIndex],
            bottomNavigationBar: CustomBottomNav(
              items: [
                bottomItem(
                  lavel: 'Home',
                  icon: Icons.home_outlined,
                ),
                bottomItem(
                  lavel: 'Schedule',
                  icon: Icons.calendar_month_sharp,
                ),
                bottomItem(
                  lavel: 'Timesheet',
                  icon: Icons.pending_actions,
                ),
                bottomItem(
                  lavel: 'Job cost',
                  icon:Icons.attach_money_outlined,
                ),
                bottomItem(
                  lavel: 'Profile',
                  icon: Icons.person_outline,
                ),
              ],
            )),
      );
    });
  }
}
