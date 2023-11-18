import 'package:onsite/app/core/config/theme/color.dart';
import 'package:flutter/material.dart';

import '../core/config/theme/style.dart';

TabBar customTabBar({
  required List<Widget> tabs,
  bool isScrollable =false
  }) {
  return TabBar(
    isScrollable:isScrollable ,
      labelColor: kWhite,
      labelStyle: kBodyLarge,
      unselectedLabelStyle: kBodyLarge,
      unselectedLabelColor: kTextLightColor,
      labelPadding: const EdgeInsets.only(bottom: 15, top: 8,left: 16,right: 16),
      indicatorPadding: const EdgeInsets.only(bottom: 5),
      dividerColor: kTextColor,
      indicatorSize: TabBarIndicatorSize.tab,
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 2,
          color: kWhite,
        ),
      ),
      tabs:tabs
      );
}
