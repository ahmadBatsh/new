import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibeacon/app/core/values/export/export_values.dart';

import '../../../../../global_widgets/app_text_field_widget.dart';
import '../../login_controller.dart';

class LoginFieldsView extends GetView<LoginController> {
  const LoginFieldsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // StudentName
        AppTextFieldWidget(
          // controller: controller.state().nickNameController,
          hintText: AppStrings.username.tr,
        ),

        // Space
        const SizedBox(
          height: AppDimensions.paddingOrMargin08,
        ),

        // Password
        AppTextFieldWidget(
          // controller: controller.state().passwordController,
          hintText: AppStrings.password.tr,
          obscureText: true
          ,
        ),
      ],
    );
  }
}
