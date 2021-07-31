import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_pageview_navigation2/app/routes/app_pages.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Listener(
        onPointerMove: (moveEvent) {
          if (moveEvent.delta.dx > 0) {
            Get.rootDelegate.toNamed(Routes.PROFILE);
          }
          if (moveEvent.delta.dx < 0) {
            Get.rootDelegate.toNamed(Routes.PRODUCTS);
          }
        },
        child: Obx(
          () => Container(
            height: 500,
            width: double.infinity,
            color: Colors.redAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'DashboardView is working',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text('Time: ${controller.now.value.toString()}'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
