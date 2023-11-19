import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/job_cost_controller.dart';

class JobCostView extends GetView<JobCostController> {
  const JobCostView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JobCostView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'JobCostView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
