import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibeacon/app/core/values/export/export_values.dart';
import 'package:ibeacon/app/features/auth/register01/widgets/views/regsiter01_fields_view.dart';

import '../../../global_widgets/app_button_widget.dart';
import 'register01_controller.dart';

class Register01Page extends GetView<Register01Controller> {
  const Register01Page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        // Appbar

        appBar: AppBar(
          leading: TextButton(
            onPressed: () {
              Get.toNamed(
                'login',
              );
            },
            child: const Icon(
              Icons.arrow_back_outlined,
              color: AppColors.white,
            ),
          ),
          backgroundColor: AppColors.primary,
          elevation: AppDimensions.zero,
        ),
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              color: AppColors.primary,
            ),

            // Content
            Container(
              height: heightScreen * 0.8,
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    AppDimensions.radius60,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(
                  AppDimensions.paddingOrMargin16,
                ),
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Header

                        const Text(
                          textAlign: TextAlign.center,
                          AppStrings.createNewAccount,
                          style: TextStyle(
                            fontSize: 30,
                            color: AppColors.black01,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        // Space

                        const SizedBox(
                          height: AppDimensions.height40,
                        ),

                        // Fields
                        const Register01FieldsView(),

                        // Space
                        const SizedBox(
                          height: AppDimensions.paddingOrMargin16,
                        ),

                        // Submit
                        AppButtonWidget(
                          text: AppStrings.sinUp,
                          onPressed: () {},
                          backgroundColor: AppColors.black01,
                          paddingHorizontal: 140,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
