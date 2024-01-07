import 'package:get/get.dart';

import 'course_controller.dart';


class CoursesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CoursesController());
  }
}