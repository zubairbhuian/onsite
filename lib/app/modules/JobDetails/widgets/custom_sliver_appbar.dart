import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onsite/app/core/config/theme/color.dart';

SliverAppBar customSliverAppBar({required bool innerBoxIsScrolled,required Widget child,
    PreferredSizeWidget? bottom}) {
  return SliverAppBar(
    backgroundColor:kWhite,
    elevation: 3,
    pinned:true,
    expandedHeight: 5.0,
    collapsedHeight:5.0,
    toolbarHeight: 5,
    stretch: false,
    centerTitle: true,
    floating: true,
    automaticallyImplyLeading: false,
    forceElevated: innerBoxIsScrolled,
    bottom: bottom,
  );
}
