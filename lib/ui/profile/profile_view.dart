import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nov23/ui/home/home_controller.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.isRegistered<HomeController>()
        ? Get.find<HomeController>()
        : Get.put(HomeController());
    return Scaffold(
      body: Center(
        child: Text(controller.count.toString()),
      ),
    );
  }
}
