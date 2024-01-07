import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibeacon/app/core/values/export/export_values.dart';
import 'package:ibeacon/app/features/auth/login/login_controller.dart';

import '../../../../../global_widgets/app_button_widget.dart';

class LoginSubmitView extends GetView<LoginController> {
  const LoginSubmitView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButtonWidget(
          text: AppStrings.login,
          onPressed: () {},
          backgroundColor: AppColors.black01,
          paddingHorizontal: 140,
        ),

        // ForgetPassword
        TextButton(
          child: const Text(
            AppStrings.forgetPassword,
            style: TextStyle(
              color: AppColors.black01,
            ),
          ),
          onPressed: () {},
        ),
        // SizedBox(
        //   height: AppDimensions.height05,
        // ),

        TextButton(
          child: const Text(
            AppStrings.sinUp,
            style: TextStyle(
              color: AppColors.black01,
            ),
          ),
          onPressed: () {
            Get.toNamed(
              'register',
            );
          },
        ),
      ],
    );
  }
}
