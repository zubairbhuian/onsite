import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/modules/application/home/controllers/home_controller.dart';
import 'package:onsite/app/modules/application/home/widgets/check_in_card.dart';
import 'package:onsite/app/modules/application/home/widgets/home_bottomsheet.dart';
import 'package:onsite/app/widgets/appbar.dart';
import 'package:onsite/app/widgets/custom_btn.dart';

class CheckInView extends GetView<HomeController> {
  const CheckInView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const CustomAppBar(title: Text("Check in")),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              child: Column(
                children: [
                  // row 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          child: Text(
                        'Select Job',
                        style: kTitleMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )),
                      Flexible(
                          child: Text(
                        'Set start time manually',
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                            decorationColor: kPrimaryColor,
                            color: kPrimaryColor),
                      )),
                    ],
                  ),
                  12.height,
                  // row 2
                  GetBuilder<HomeController>(builder: (controller) {
                    var data = controller.checkInList;
                    return Column(
                      children: List.generate(
                          data.length,
                          (index) => CheckInCard(
                                title: data[index]["title"],
                                location: data[index]["location"],
                                date: data[index]["date"],
                                isActive: index == controller.checkInIndex
                                    ? true
                                    : false,
                                onTap: () {
                                  controller.checkInIndex = index;
                                  controller.update();
                                },
                              )),
                    );
                  })
                ],
              ),
            ),
          ),
          //btn
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            height: 80,
            decoration: BoxDecoration(color: kWhite, boxShadow: [kbtnShadow]),
            child: Center(
              child: PrimaryBtn(
                onPressed: () {
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
                            height:
                                420 + MediaQuery.of(context).viewInsets.bottom,
                            child: HomeBottomSheet.checkin());
                      });
                },
                width: double.infinity,
                // padding: EdgeInsets.zero,
                child: const Text("Check in"),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
