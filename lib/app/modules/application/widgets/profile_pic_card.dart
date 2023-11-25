import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onsite/app/modules/application/profile/controllers/profile_controller.dart';
import 'package:onsite/app/widgets/network_img.dart';

import '../../../core/config/theme/color.dart';

class ProfilePicCard extends GetView<ProfileController> {
  const ProfilePicCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GetBuilder<ProfileController>(builder: (controller) {
        File? imgFile = controller.profileImgFile;
        return Container(
          decoration:
              BoxDecoration(boxShadow: [kAppbarShadow], shape: BoxShape.circle),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(800),
                child: CircleAvatar(
                  backgroundColor: const Color(0xffECEDF2),
                  radius: 60.r,
                  child: imgFile == null
                      ? NetworkImg(
                          "url",
                          errUrl: 'assets/images/default_user.png',
                          width: 120.r,
                          height: 120.r,
                        )
                      : Image(
                          width: double.infinity,
                          height: double.infinity,
                          image: FileImage(imgFile),
                          fit: BoxFit.cover,
                        ),
                ),
              ),
              Positioned(
                  right: 4,
                  top: -5,
                  child: GestureDetector(
                    onTap: () {
                      controller.onPickProfileImage();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, boxShadow: [kAppbarShadow]),
                      child: CircleAvatar(
                        radius: 23.r,
                        backgroundColor: kWhite,
                        child: const Icon(
                          Icons.edit,
                          size: 16,
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        );
      }),
    );
  }
}
