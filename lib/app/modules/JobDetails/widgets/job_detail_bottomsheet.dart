import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/modules/JobDetails/widgets/dot_container.dart';
import 'package:onsite/app/modules/JobDetails/widgets/sheet_divider.dart';
import 'package:onsite/app/modules/JobDetails/widgets/timesheet_card.dart';
import 'package:onsite/app/widgets/custom_btn.dart';
import 'package:onsite/app/widgets/custom_textfield.dart';
import 'package:onsite/app/widgets/progress_container.dart';

class JobDetailBottomSheet {
  // **** Add Node ******
  static Widget addNote() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SheetDivider(),
          Text(
            "Add note",
            style: kLabelLarge,
          ),
          11.height,
          const CustomTextField(
            maxLines: 5,
          ),
          PrimaryBtn(
              width: double.infinity,
              onPressed: () {},
              child: const Text('Submit'))
        ],
      ),
    );
  }

  // **** Download Invoice ******
  static Widget downloadInvoice() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SheetDivider(),
          Text(
            "Invoice ID: HT35434",
            style: kLabelMedium.copyWith(color: kTextColorLight),
          ),
          11.height,
          Text(
            "Download Invoice",
            style: kTitleMedium,
          ),
          11.height,
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
          11.height,
          Text(
            _text,
            style: kBodyMedium.copyWith(color: kTextColorLight),
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
          ),
          16.height,
          PrimaryBtn(
              width: double.infinity,
              onPressed: () {},
              child: const Text('Download Invoice '))
        ],
      ),
    );
  }

  // **** Complete project ******
  static Widget completeProject() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SheetDivider(),
          Text(
            "Complete project",
            style: kTitleSmall,
          ),
          12.height,
          GestureDetector(
            onTap: () {},
            child: DotContainer(
                color: const Color(0xffFAF9F9),
                dotColor: kTextColorLight,
                dotWidth: 1,
                dotgap: 5,
                dotheith: 5,
                padding: const EdgeInsets.all(25),
                child: Center(
                  child: Column(
                    children: [
                      const Icon(
                        Icons.camera_alt_rounded,
                        size: 35,
                        color: kTextColorLight,
                      ),
                      11.height,
                      Text(
                        "Upload invoice",
                        style: kLabelMedium,
                      ),
                      11.height,
                      Text(
                        "Supported formates: JPEG, PNG, GIF, MP4, PDF, PSD, AI, Word, PPT",
                        style: kBodySmall.copyWith(color: kTextColorLight),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )),
          ),
          12.height,
          StaggeredGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            axisDirection: AxisDirection.down,
            children: [
              Container(
                height: 84,
                decoration: BoxDecoration(
                    color: const Color(0xffF1F2F9),
                    borderRadius: BorderRadius.circular(8)),
              ),
              Container(
                height: 84,
                decoration: BoxDecoration(
                    color: const Color(0xffF1F2F9),
                    borderRadius: BorderRadius.circular(8)),
              ),
              Container(
                height: 84,
                decoration: BoxDecoration(
                    color: const Color(0xffF1F2F9),
                    borderRadius: BorderRadius.circular(8)),
              ),
            ],
          ),
          16.height,
          PrimaryBtn(
              width: double.infinity,
              onPressed: () {},
              child: const Text('Submit'))
        ],
      ),
    );
  }
}

String _text =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";
