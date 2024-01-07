import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibeacon/app/core/values/export/export_values.dart';
import 'package:ibeacon/app/features/home/presentation/home_pagee.dart';
import 'package:ibeacon/app/features/profile/presentation/profile_page.dart';
import 'package:ibeacon/app/global_widgets/export/export_global_widgets.dart';

import '../../home/presentation/home_controller.dart';
import '../../inbox/presentation/inbox_controller.dart';
import '../../inbox/presentation/inbox_pagee.dart';
import '../../profile/presentation/profile_controller.dart';



class NavigationController extends GetxController {
  final selectIndex = 1.obs;

  final List<AppTabBarItem> items = [
    AppTabBarItem(
      text: AppStrings.profile,
      icon: Icons.person_outline_sharp,
    ),
    AppTabBarItem(
      text: AppStrings.home,
      icon: Icons.home,
    ),
    AppTabBarItem(
      text: AppStrings.inbox,
      icon: Icons.mail,
    ),
  ];

  final List<Widget> Pages = [
    const ProfilePage(),
     HomePage(),
    const InboxPage(),
    // LoginPage()
    // HomePage(),
  ];

  void goToPage(index) {
    if (index == 0) {
      Get.lazyPut(() => ProfileController());
    }
    if (selectIndex.value == 1) {
      Get.lazyPut(() => HomeController());

      if (selectIndex.value == 2) {
        Get.lazyPut(() => InboxController());
      }
    }
  }
}