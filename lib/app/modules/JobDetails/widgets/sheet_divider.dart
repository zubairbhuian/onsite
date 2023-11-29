import 'package:flutter/material.dart';
import 'package:onsite/app/core/config/theme/color.dart';

class SheetDivider extends StatelessWidget {
  const SheetDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 4,
        margin: const EdgeInsets.only(bottom: 32),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: kTextColorLight),
      ),
    );
  }
}
