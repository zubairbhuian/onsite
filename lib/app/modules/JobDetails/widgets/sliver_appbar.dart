import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';

SliverList sliverAppbar() {
  return SliverList(
      delegate: SliverChildListDelegate([
    Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(color: kWhite, boxShadow: [kAppbarShadow]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        GestureDetector(
          onTap: () => Get.back(),
          child: Container(
            alignment: Alignment.centerRight,
            child: const Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
          ),
        ),
        Text(
          'Job Details',
          style: kLabelLarge,
        ),
        const SizedBox(
          width: 20,
        )
      ]),
    )
  ]));
}
