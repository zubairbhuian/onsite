
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onsite/app/core/config/theme/style.dart';
import 'package:onsite/app/core/utils/int_extensions.dart';
import 'package:onsite/app/modules/application/profile/controllers/profile_controller.dart';
import 'package:onsite/app/modules/application/widgets/profile_pic_card.dart';
import 'package:onsite/app/modules/application/widgets/profile_row.dart';
import 'package:onsite/app/widgets/appbar.dart';
import 'package:onsite/app/widgets/card.dart';

class PersonalInfoView extends GetView<ProfileController> {
  const PersonalInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(title: Text("Personal info"),),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfilePicCard(),
              24.height,
               Text("Other menu",style: kTitleMedium,),
               24.height,
               const AppCard(child:Column(
                children: [
                  ProfileRow(title: "Name",value: "Wade Warren",),
                  ProfileRow(title: "Phone No.",value: "(405) 555-0128",),
                  ProfileRow(title: "Email",value: "sara.cruz@example.com",),
                  ProfileRow(title: "Address",value: "8502 Preston Rd. Inglewood, Maine 98380",),
                  ProfileRow(title: "City",value: "Fairfield",),
                  ProfileRow(title: "State",value: "Connecticut",),
                  ProfileRow(title: "Zip Code",value: "94533",isDivider: false,),

                ],
               ))


            ],
          ),
        ),
      ));
  }
}