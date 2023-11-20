import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onsite/app/modules/application/profile/controllers/profile_controller.dart';
import 'package:onsite/app/modules/application/widgets/notification_card.dart';
import 'package:onsite/app/modules/application/widgets/notification_titlebar.dart';
import 'package:onsite/app/widgets/appbar.dart';

class NotificationsView extends GetView<ProfileController> {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(
        title: Text("Notifications"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // title bar
            NotificationTitleBar(),
            // notifications card
            NotificationCard(),
            NotificationCard(),
          ],
        ),
      ),
    ));
  }
}
