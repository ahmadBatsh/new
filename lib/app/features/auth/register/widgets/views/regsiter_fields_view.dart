import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibeacon/app/core/values/export/export_values.dart';

import '../../../../../core/values/app_strings.dart';
import '../../../../../global_widgets/app_text_field_widget.dart';
import '../../register_controller.dart';

class RegisterFieldsView extends GetView<RegisterController> {
  const RegisterFieldsView({
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

        // StudentId
        AppTextFieldWidget(
          // controller: controller.state().passwordController,
          hintText: AppStrings.studentId.tr,
        ),
        const SizedBox(
          height: AppDimensions.paddingOrMargin08,
        ),

        // Email
        AppTextFieldWidget(
          // controller: controller.state().passwordController,
          hintText: AppStrings.email.tr,
        ),
        const SizedBox(
          height: AppDimensions.paddingOrMargin08,
        ),

        // Password
        AppTextFieldWidget(
          // controller: controller.state().passwordController,
          hintText: AppStrings.password.tr,
        ),
        const SizedBox(
          height: AppDimensions.paddingOrMargin08,
        ),

        // UniversityName
        AppTextFieldWidget(
          // controller: controller.state().passwordController,
          hintText: AppStrings.universityName.tr,
        ),
      ],
    );
  }
}
