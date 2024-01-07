import 'package:get/get.dart';
import 'package:ibeacon/app/features/auth/register01/register01_controller.dart';


class Register01Binding extends Bindings {
  @override
  void dependencies() {


    Get.lazyPut(
      () => Register01Controller(

      ),
    );
  }
}
