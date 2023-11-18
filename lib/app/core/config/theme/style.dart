import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/fonts.dart';
import 'package:onsite/app/core/utils/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';


// logger
Logger kLogger = Logger();
// Globel context
BuildContext kGlobContext = NavigationService.navigatorKey.currentContext!;

// ******** Headline **********
TextStyle kHeadlineLarge = TextStyle(
    color: kTextColor,
    fontSize: 32.sp,
    fontWeight: FontWeight.w600,
    fontFamily: Fonts.primary);
TextStyle kHeadlineMedium = TextStyle(
    color: kTextColor,
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    fontFamily: Fonts.primary);
TextStyle headlineSmall = TextStyle(
    color: kTextColor,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    fontFamily: Fonts.primary);
// ******* title ***********
TextStyle kTitleLarge = TextStyle(
    color: kTextColor,
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
    fontFamily: Fonts.primary);
TextStyle kTitleMedium = TextStyle(
    color: kTextColor,
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    fontFamily: Fonts.primary);
TextStyle kTitleSmall = TextStyle(
    color: kTextColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    fontFamily: Fonts.primary);
// ******* body ********
TextStyle kBodyLarge = TextStyle(
    color: kTextColor, fontSize: 16.spMax, fontWeight: FontWeight.w400);
TextStyle kBodyMedium =
    TextStyle(color: kTextColor, fontSize: 14.sp, fontWeight: FontWeight.w400);
TextStyle kBodySmall =
    TextStyle(color: kTextColor, fontSize: 12.sp, fontWeight: FontWeight.w400);
// label
TextStyle kLabelLarge = TextStyle(
    color: kTextColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    fontFamily: Fonts.primary);
TextStyle kLabelMedium = TextStyle(
    color: kTextColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    fontFamily: Fonts.primary);
TextStyle kLabelSmall = TextStyle(
    color: kTextColor,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    fontFamily: Fonts.primary);
