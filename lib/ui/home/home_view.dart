import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nov23/ui/home/home_controller.dart';
import 'package:nov23/ui/profile/profile_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<HomeController>(
              builder: (controller) {
                return Text(controller.count.toString());
              },
            ),
            SizedBox(height: 25),
            ElevatedButton(
                onPressed: () {
                  Get.to(ProfileView());
                },
                child: Text("Go to Profile View"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
