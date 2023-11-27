import 'package:flutter/material.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/modules/JobDetails/widgets/job_detail_bottom_row.dart';
import 'package:onsite/app/modules/JobDetails/widgets/job_detail_row.dart';

import 'job_detail_top_row.dart';

class JobDetailBanner extends StatelessWidget {
  const JobDetailBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const JobDetailTopRow(
          title: "Project Name",
          btnText: "InProgress",
        ),
        12.height,
        // row 2
        const JobDetailRow(
            leftTitle: "Client Name",
            leftValue: "Jane Cooper",
            rightTitle: "Jane Cooper",
            rightValue: "Jane Cooper"),
        // row 3
        16.height,
        const JobDetailRow(
            leftTitle: "Client Name",
            leftValue: "Jane Cooper",
            rightTitle: "Jane Cooper",
            rightValue: "Jane Cooper"),
        // row 4
        16.height,
        const JobDetailBottomRow(
          title: "Jane Cooper",
          value: "Jane Cooper",
        )
      ],
    );
  }
}
