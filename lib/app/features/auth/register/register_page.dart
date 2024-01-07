import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibeacon/app.dart';
import 'package:ibeacon/app/core/values/export/export_values.dart';

import '../../../global_widgets/app_button_widget.dart';
import 'register_controller.dart';
import 'widgets/views/regsiter_fields_view.dart';
import 'widgets/views/regsiter_logo_view.dart';
import 'widgets/views/regsiter_submit_view.dart';
import '../login/login_page.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({
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
            onPressed: () {Get.toNamed('login');},
            child: const Icon(
              Icons.arrow_back_outlined,
              color: AppColors.white,
            )),
        backgroundColor: AppColors.primary,
        elevation: AppDimensions.zero,
      ),
      body: Stack(
        // Background
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
                            fontWeight: FontWeight.bold),
                      ),
// Space
                      SizedBox(
                        height: AppDimensions.height40,
                      ),

                      // Fields
                      const RegisterFieldsView(),

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
    ));
  }
}
