import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibeacon/app/core/values/export/export_values.dart';

import '../../../global_widgets/app_list_tile_widget.dart';
import '../../../global_widgets/app_tab_bar_widget.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: AppColors.gray01,
        child: Center(
            child: Column(
          children: [
            AppListTileWidget(
              title: AppStrings.courses,
              indexNotification: 2,
              onTap: () {  Get.toNamed('courses');},
            ),
            AppListTileWidget(
              onTap: () {},
              title: AppStrings.excusesForAbsence,
              // indexNotification: 2,
            ),
            AppListTileWidget(
              subtitle: 'dfs',
              title: AppStrings.notification,
              indexNotification: 2,
              onTap: () {},
            ),
          ],
        )),
      ),
    );
  }
}
