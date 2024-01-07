import 'package:get/get.dart';
import 'package:ibeacon/app/features/auth/login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LoginController(),
    );
  }
}
