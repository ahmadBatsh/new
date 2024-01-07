import 'package:get/get.dart';
import 'package:ibeacon/app/features/test/test_controller.dart';


class TestBinding extends Bindings {
  @override
  void dependencies() {


    Get.lazyPut(() => TestController());
  }
}
