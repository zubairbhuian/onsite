import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/modules/JobDetails/widgets/job_detail_bottomsheet.dart';
import 'package:onsite/app/modules/JobDetails/widgets/notes_card.dart';
import 'package:onsite/app/widgets/custom_btn.dart';

class NotesTab extends StatelessWidget {
  const NotesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(left: 25,right: 25,top: 60,bottom: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              GestureDetector(
                onTap: () {
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
                                  height: 360 +
                                      MediaQuery.of(context).viewInsets.bottom,
                                  child: JobDetailBottomSheet.addNote());
                            });
                },
                child: Text(
                  "+ Notes",
                  style: kHeadlineMedium,
                ),
              ),
              8.height,
              // card
              // ...List.generate(5, (index) => NotesCard()),
              StaggeredGrid.count(
              crossAxisCount: 1,
              mainAxisSpacing: 6,
              axisDirection: AxisDirection.down,
              children: List.generate(5, (index) => const NotesCard()),
              ),
              
            ]),
          ),
        ),
        // btn
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          height: 80,
          decoration: BoxDecoration(color: kWhite, boxShadow: [kbtnShadow]),
          child: Row(
            children: [
              Expanded(
                  child: PrimaryBtn(
                onPressed: () {},
                padding: EdgeInsets.zero,
                child: const Text("Check in"),
              )),
              16.width,
              Expanded(
                  child: OutLineBtn(
                onPressed: () {},
                padding: EdgeInsets.zero,
                child: const Text("Add Cost"),
              )),
            ],
          ),
        )
      ],
    );
  }
}
