import 'package:flutter/material.dart';
import 'package:onsite/app/core/config/theme/color.dart';

SliverAppBar customSliverAppBar({required bool innerBoxIsScrolled,required Widget child,
    PreferredSizeWidget? bottom}) {
  return SliverAppBar(
    backgroundColor: kWhite,
    elevation: 3,
    pinned: true,
    expandedHeight: 230.0,
    stretchTriggerOffset: 20,
    collapsedHeight: 1,
    toolbarHeight: 1,
    stretch: false,
    centerTitle: true,
    floating: false,
    automaticallyImplyLeading: false,
    forceElevated: innerBoxIsScrolled,
    flexibleSpace: FlexibleSpaceBar(
      background: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 8),
        color: kWhite,
        child:child,
      ),
    ),
    bottom: bottom,
  );
}
