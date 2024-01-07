import 'package:flutter/material.dart';

import '../core/values/app_colors.dart';
import '../core/values/app_dimensions.dart';

class AppButtonWidget extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double? fontSize;
  final double  paddingHorizontal ;
  final double paddingVertical ;
  final void Function() onPressed;

  const AppButtonWidget({
    Key? key,
    required this.text,
    this.backgroundColor = AppColors.primary,
    this.paddingVertical =0,
    this.paddingHorizontal = 10,
    this.textColor = AppColors.white,
    this.fontSize = AppDimensions.fontSize16,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.height40,
      child: TextButton(
        style: ButtonStyle(padding:MaterialStateProperty.all(EdgeInsets.symmetric(vertical: paddingVertical,horizontal: paddingHorizontal)),
          backgroundColor: MaterialStateProperty.all(
            backgroundColor,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
