import 'dart:io';

import 'package:get/get.dart';
import 'package:onsite/app/core/utils/my_image_picker.dart';

class ProfileController extends GetxController {
  static ProfileController get to => Get.find();
  File? profileImgFile;

  List<String> notificationDropdownList = ["All", "Data"];
 late String notificationValue = notificationDropdownList.first;

  // ******* pick and crop img
  onPickProfileImage() async {
    profileImgFile = await MyImagePicker.pickImageAndCrop();
    update();
  }
}
