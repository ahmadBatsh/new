import 'package:get/get.dart';
import 'package:ibeacon/app/features/scan_ibeacon/scan_controller.dart';

import '../attendance/attendance_controller.dart';


class ScanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ScanController(),
    );
  }
}
