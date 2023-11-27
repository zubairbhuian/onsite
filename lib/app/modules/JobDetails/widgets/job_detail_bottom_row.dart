import 'package:flutter/material.dart';
import 'package:onsite/app/core/config/theme/color.dart';

class JobDetailBottomRow extends StatelessWidget {
  final String title;
  final String value;
  const JobDetailBottomRow({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff878B9D),
                  fontSize: 14),
            )),
            Expanded(
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      value,
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
