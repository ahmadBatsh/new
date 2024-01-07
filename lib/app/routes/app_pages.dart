import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../features/attendance/attendance_binding.dart';
import '../features/attendance/attendance_page.dart';
import '../features/auth/login/login_binding.dart';
import '../features/auth/login/login_page.dart';
import '../features/auth/register/register_binding.dart';
import '../features/auth/register/register_page.dart';
import '../features/auth/register01/register01_binding.dart';
import '../features/auth/register01/register01_page.dart';
import '../features/courses/course_binding.dart';
import '../features/courses/course_page.dart';
import '../features/home/presentation/home_binding.dart';
import '../features/home/presentation/home_pagee.dart';
import '../features/inbox/presentation/inbox_binding.dart';
import '../features/inbox/presentation/inbox_pagee.dart';
import '../features/navigation/presentarion/navigation_binding.dart';
import '../features/navigation/presentarion/navigation_page.dart';
import '../features/profile/presentation/profile_binding.dart';
import '../features/profile/presentation/profile_page.dart';
import '../features/scan_ibeacon/scan_binding.dart';
import '../features/scan_ibeacon/scan_page.dart';
import '../features/test/test_binding.dart';
import '../features/test/test_pagee.dart';


part 'app_routes.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    // // Auth
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
      transition: Transition.fadeIn,
    ),

    //Register
    GetPage(
      name: AppRoutes.register,
      page: () => const RegisterPage(),
      binding: RegisterBinding(),
      transition: Transition.fadeIn,
    ),

    //Register01
    GetPage(
      name: AppRoutes.register01,
      page: () => const Register01Page(),
      binding: Register01Binding(),
      transition: Transition.fadeIn,
    ),

    // home
    GetPage(
      name: AppRoutes.navigation,
      page: () => const NavigationPage(),
      binding: NavigationBinding()
    ),

    // home
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      binding: HomeBinding()
    ),
    // profile
    GetPage(
      name: AppRoutes.profile,
      page: () => ProfilePage(),
      binding: ProfileBinding()
    ),

    // Inbox
    GetPage(
      name: AppRoutes.inbox,
      page: () => const InboxPage(),
      binding: InboxBinding()
    ), // inbox

    // Course
    GetPage(
      name: AppRoutes.courses,
      page: () => const CoursesPage(),
      binding: CoursesBinding()
    ),



    // Attendance
    GetPage(
      name: AppRoutes.attendance,
      page: () => const AttendancePage(),
      binding: AttendanceBinding()
    ), // inbox

    // ScanIBeacon
    GetPage(
        name: AppRoutes.scanIBeacon,
        page: () => const ScanPage(),
        binding: ScanBinding()
    ), //


    // Test
    GetPage(
      name: AppRoutes.test,
      page: () => const TestPage(),
      binding: TestBinding()
    )
  ];
}
