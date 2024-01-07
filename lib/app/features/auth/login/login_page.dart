import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibeacon/app/core/values/export/export_values.dart';
import 'package:ibeacon/app/features/auth/login/login_controller.dart';
import 'package:get/get.dart';
import 'package:ibeacon/app/features/auth/login/widget/view/login_fields_view.dart';
import 'package:ibeacon/app/features/auth/login/widget/view/login_submit_view.dart';

import '../../../global_widgets/app_button_widget.dart';
import '../register/widgets/views/regsiter_fields_view.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              color: AppColors.primary,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: heightScreen * 0.05, bottom: heightScreen * 0.05),
                    child: Image.asset(
                      'assets/images/image01.png',
                      fit: BoxFit.cover,
                      height: AppDimensions.height125,
                      width: AppDimensions.height125,
                    ),
                  ),
                  // Content
                  Container(
                    // margin: EdgeInsets.only(),
                    height: heightScreen * 0.7,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          AppDimensions.radius60,
                        ),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(
                        AppDimensions.paddingOrMargin16,
                      ),
                      child: Center(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Header

                              Text(
                                AppStrings.login,
                                style: TextStyle(
                                  fontSize: 30,
                                  color: AppColors.black01,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              // Space
                              SizedBox(
                                height: AppDimensions.height40,
                              ),

                              // Fields
                              LoginFieldsView(),

                              // Space
                              SizedBox(
                                height: AppDimensions.paddingOrMargin16,
                              ),

                              // Submit

                              LoginSubmitView(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
