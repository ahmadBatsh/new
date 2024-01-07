import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibeacon/app/core/values/export/export_values.dart';
import 'package:ibeacon/app/features/courses/view/today_course_page.dart';

import 'view/all_course_page.dart';

class CoursesController extends GetxController {
  List<Tab> item = [
    const Tab(
      text: AppStrings.allCourses,
    ),
    const Tab(
      text: AppStrings.todayCourses,
    )
  ];
  List<Widget> page = [
    const CoursesAllView(),
    const CoursesTodayView(),
  ];
}
