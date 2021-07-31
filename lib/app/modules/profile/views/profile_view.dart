import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Listener(
        onPointerMove: (moveEvent) {
          if (moveEvent.delta.dx > 0) {
            Get.rootDelegate.toNamed(Routes.PRODUCTS);
          }
          if (moveEvent.delta.dx < 0) {
            Get.rootDelegate.toNamed(Routes.DASHBOARD);
          }
        },
        child: Container(
          height: 500,
          width: double.infinity,
          color: Colors.orangeAccent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'ProfileView is working',
                style: TextStyle(fontSize: 20),
              ),
              Hero(
                tag: 'heroLogo',
                child: const FlutterLogo(),
              ),
              MaterialButton(
                child: Text('Show a test dialog'),
                onPressed: () {
                  //shows a dialog
                  Get.defaultDialog(
                    title: 'Test Dialog !!',
                    barrierDismissible: true,
                  );
                },
              ),
              MaterialButton(
                child: Text('Show a test dialog in Home router outlet'),
                onPressed: () {
                  //shows a dialog

                  Get.defaultDialog(
                    title: 'Test Dialog In Home Outlet !!',
                    barrierDismissible: true,
                    navigatorKey: Get.nestedKey(Routes.HOME),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
