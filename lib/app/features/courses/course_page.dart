import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibeacon/app/core/values/export/export_values.dart';
import 'package:ibeacon/app/global_widgets/export/export_global_widgets.dart';

import 'course_controller.dart';

class CoursesPage extends GetView<CoursesController> {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: controller.item.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.courses),
          elevation: AppDimensions.zero,
          backgroundColor: AppColors.primary,
          actions: const [
            Padding(
              padding: EdgeInsets.all(
                AppDimensions.paddingOrMargin20,
              ),
              child: Icon(
                Icons.settings,
              ),
            ),
          ],
          leading: InkWell(onTap: () {
            Get.back();
          },
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
            ),
          ),
          bottom: TabBar(
            tabs: controller.item,
          ),
        ),
        body: TabBarView(children:controller.page),
      ),
    );
  }
}
