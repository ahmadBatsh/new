import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'navigation_controller.dart';


class NavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
          () => NavigationController(),
    );
  }
}
