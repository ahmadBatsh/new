import 'package:flutter/material.dart';

import '../core/values/app_colors.dart';
import '../core/values/app_dimensions.dart';

class AppTextFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final Color borderColor;
  final bool obscureText;

  const AppTextFieldWidget({
    Key? key,
    this.controller,
    this.hintText = '',
    this.borderColor = AppColors.primary,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.height50,
      child: TextField(
        controller: controller,
        cursorColor: AppColors.primary,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor,
              width: AppDimensions.thickness01,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor,
              width: AppDimensions.thickness01,
            ),
          ),
          hintText: hintText,
          contentPadding: const EdgeInsets.only(
            left: AppDimensions.paddingOrMargin16,
            top: AppDimensions.paddingOrMargin04,
            bottom: AppDimensions.paddingOrMargin04,
          ),
        ),
        obscureText: obscureText,
      ),
    );
  }
}
