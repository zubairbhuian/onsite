import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/modules/application/profile/views/notifications_view.dart';
import 'package:onsite/app/modules/application/profile/views/personal_info_view.dart';
import 'package:onsite/app/modules/application/widgets/prifile_tile_card.dart';
import 'package:onsite/app/widgets/appbar.dart';
import 'package:onsite/app/widgets/card.dart';
import 'package:onsite/app/widgets/popup_dialogs.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhite,
        appBar: const CustomAppBar(
          isBackBtnShow: false,
          isPrimary: true,
          preferredHeight: 155,
        ),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              // **** personal info ****
              Container(
                color: kWhite,
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 32),
                child: AppCard(
                    onTap: () {
                      Get.to(() => const PersonalInfoView());
                    },
                    color: kWhite,
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Icon(
                                Icons.person,
                                size: 40.sp,
                                color: kDisabledColor,
                              ),
                              14.width,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Personal Info",
                                    style: kBodyMedium,
                                  ),
                                  Text(
                                    "Manage your personal information",
                                    style: kBodySmall.copyWith(
                                        color: kTextColorLight),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 16,
                        )
                      ],
                    )),
              ),
              // ***** Other menu ******
              Container(
                height: 10,
                width: double.infinity,
                color: const Color(0xffF7F9FA),
              ),
              Container(
                  color: kWhite,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Other menu",
                        style: kTitleMedium,
                      ),
                      16.height,
                      ProfileTileCard(
                        title: "Notifications",
                        onTap: () {
                          Get.to(() => const NotificationsView());
                        },
                      ),
                      ProfileTileCard(
                        title: "FAQ",
                        onTap: () {},
                      ),
                      ProfileTileCard(
                        title: "Log Out",
                        color: kDangerColor,
                        onTap: () {
                          PopupDialog.logOutDialog();
                        },
                      ),
                      //app version
                      24.height,
                      Text(
                        'App version 1.0.1 (45)',
                        style: kBodyMedium.copyWith(
                            color: const Color(0xff636778)),
                      ),
                      24.height,
                    ],
                  )),
            ],
          ),
        ));
  }
}
