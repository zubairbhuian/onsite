import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/widgets/appbar.dart';

import '../controllers/job_cost_controller.dart';

class JobCostView extends GetView<JobCostController> {
  const JobCostView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('JobCost'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///
           
          ],
        ),
      ),
    );
  }
}
