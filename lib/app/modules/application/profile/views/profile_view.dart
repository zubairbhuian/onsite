import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/color.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/custom_appbar_shape.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/widgets/network_img.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _appBar() ,
        body:SingleChildScrollView(
          child: Column(
            children:List.generate(100, (index) => const Text("This is demoz")),
          ),
        )
      ),
    );
  }
  AppBar _appBar() => AppBar(

      // leading: Container(
      //   color: kRed,
      //     padding: const EdgeInsets.only(bottom: 60),
      //     child: IconButton(
      //       icon: const Icon(
      //         Icons.arrow_back_ios,
      //         size: 15,
      //       ),
      //       onPressed: () {
      //         Get.back();
      //       },
      //     )),
      centerTitle: true,
      automaticallyImplyLeading: false,
      elevation: 0,
      toolbarHeight: 155,
      backgroundColor: Colors.transparent,
      flexibleSpace: ClipPath(
        clipper: CustomAppbarShape(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [kPrimaryColor, kPrimaryColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight)),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // frist row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('Profile',style: kTitleMedium.copyWith(color: kWhite),),
                const Icon(Icons.settings,color: kWhite,)
              ],),
              // profile row
              20.height,
              Row(children: [
                Expanded(child:Row(children: [
                   Badge(
                    backgroundColor: kSuccessColor,
                    label:const CircleAvatar(radius: 4,backgroundColor: kWhite,),
                    child:Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          12
                        ),
                        color: const Color(0xffCCC4FF)
                      ),
                      child: const NetworkImg(
                        "",
                        errUrl: "assets/images/default_user.png",
                        width: 48,
                        height: 48,
                        ),
                    ),
                  ),
                  10.width,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Welcome back ",style:kBodySmall.copyWith(color: kWhite)),
                    Text("Johen Markes",style:kHeadlineMedium.copyWith(color: kWhite)),
                  ],)
                ],)),
                
                const Badge(
                  backgroundColor: kSuccessColor,
                  smallSize: 8,
                child: Icon(Icons.notifications_outlined,color: kWhite,),
                // label: ,
                )
              ],)
            ],
          ),
        ),
      )
      );
}
