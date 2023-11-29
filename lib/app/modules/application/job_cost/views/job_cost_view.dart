import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/widgets/appbar.dart';
import '../controllers/job_cost_controller.dart';

class JobCostView extends GetView<JobCostController> {
  const JobCostView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: Text('Job Cost'),
        isBackBtnShow: false,
      ),
      body: Center(
        child: Text("No Design Found in Figma",style: TextStyle(
          fontSize: 20,fontWeight: FontWeight.w600,
          color: kPrimaryColor
        ),),
      ),
    );
  }
}
