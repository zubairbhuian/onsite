import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

BottomNavigationBarItem bottomItem({
  required String lavel,
  required IconData icon,
}) {
  return BottomNavigationBarItem(
    label: lavel,
    icon: FaIcon(
      icon,
    ).marginOnly(bottom: 5),
  );
}
