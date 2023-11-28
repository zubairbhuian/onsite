import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/widgets/custom_btn.dart';

class JobCompletedTab extends StatelessWidget {
  const JobCompletedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 8, top: 60, left: 19, right: 19),
            child: StaggeredGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              axisDirection: AxisDirection.down,
              children: List.generate(
                10,
                (index) => StaggeredGridTile.fit(
                  crossAxisCellCount: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: 135,
                      decoration: const BoxDecoration(
                          color: kRed,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/job_pic.png"))),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        // btn
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          height: 80,
          decoration: BoxDecoration(
            color: kWhite,
            boxShadow: [kbtnShadow]
          ),
          child: Row(children: [
            Expanded(child: PrimaryBtn(
              onPressed: (){},
              padding: EdgeInsets.zero,
              child: const Text("Check in"),
              )),
            16.width,
            Expanded(child: OutLineBtn(onPressed: (){},padding: EdgeInsets.zero,
              child: const Text("Add Cost"),)),
          ],),
        )

      ],
    );
  }
}
