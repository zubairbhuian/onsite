import 'package:flutter/material.dart';
import 'package:onsite/app/core/config/theme/color.dart';

class JobDetailRow extends StatelessWidget {
  final String leftTitle;
  final String leftValue;
  final String rightTitle;
  final String rightValue;
  const JobDetailRow(
      {super.key,
      required this.leftTitle,
      required this.leftValue,
      required this.rightTitle,
      required this.rightValue});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Text(
              leftTitle,
              style: const TextStyle(color: Color(0xff878B9D), fontSize: 14),
            )),
            Expanded(
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      rightTitle,
                      style: const TextStyle(color: Color(0xff878B9D), fontSize: 14),
                    ))),
          ],
        ),
        // row 3
        Row(
          children: [
            Expanded(
                child: Text(
              leftValue,
              style: const TextStyle(
                  fontWeight: FontWeight.w600, color: kTextColor, fontSize: 16),
            )),
            Expanded(
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      rightValue,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: kTextColor,
                          fontSize: 16),
                    ))),
          ],
        ),
      ],
    );
  }
}
