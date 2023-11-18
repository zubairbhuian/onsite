import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forget_pass_controller.dart';

class ForgetPassView extends GetView<ForgetPassController> {
  const ForgetPassView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ForgetPassView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ForgetPassView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
