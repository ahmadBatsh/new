import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/values/app_dimensions.dart';
import '../../register01_controller.dart';

class Register01LogoView extends GetView<Register01Controller> {
  const Register01LogoView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.paddingOrMargin100,
        vertical: AppDimensions.paddingOrMargin40,
      ),
      child: Image.asset(
        'AppAssets.logo',
      ),
    );
  }
}
