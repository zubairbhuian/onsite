import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/timesheet_controller.dart';

class TimesheetView extends GetView<TimesheetController> {
  const TimesheetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TimesheetView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TimesheetView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
