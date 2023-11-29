import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/modules/JobDetails/widgets/job_detail_bottomsheet.dart';
import 'package:onsite/app/routes/app_pages.dart';
import 'package:onsite/app/widgets/card.dart';
import 'package:onsite/app/widgets/custom_btn.dart';

class CostingCard extends StatelessWidget {
  const CostingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // row 1
        Row(
          children: [
            const Icon(
              Icons.calendar_month_sharp,
              size: 16,
              color: kTextColor,
            ),
            8.width,
            Expanded(
                child: Text(
              " 23 Oct  2023 ",
              style: kBodySmall,
            ))
          ],
        ),
        // row 2
        11.height,
        Text("Johen markes property",style: kLabelLarge,),
        11.height,
        Text(
          "Lorem ipsum is a placeholder text commonly used to demonstrate the ...",
          style: kBodyMedium,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        // row 4
        const Divider(
          color: kTextColorLight,
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: PrimaryBtn(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 25,
              onPressed: () {
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
                                  height: 300 +
                                      MediaQuery.of(context).viewInsets.bottom,
                                  child: JobDetailBottomSheet.downloadInvoice());
                            });
              },
              style: kBodySmall,
              child: const Text("Downloaded Invoice")),
        )
      ],
    )).marginOnly(bottom: 6);
  }
}
