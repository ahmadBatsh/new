import 'package:flutter/material.dart';
import 'package:ibeacon/app/core/values/app_strings.dart';
import 'package:ibeacon/app/core/values/export/export_values.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.primary,
            centerTitle: true,
            leading: const Icon(Icons.arrow_back_ios_new_outlined),
            title: const Text(AppStrings.scanBeacon)
          ),
          body: Scaffold(
            body: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(50),
                  child: Text(
                    AppStrings.note,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: MaterialButton(
                    color: AppColors.primary,
                    height: AppDimensions.height150,
                    onPressed: () {},
                    child: const Column(
                      children: [
                        Icon(
                          Icons.cell_tower_outlined,
                          color: AppColors.white,
                          size: AppDimensions.iconSize40,
                        ),
                        SizedBox(height: AppDimensions.paddingOrMargin08),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            AppStrings.start,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: AppDimensions.paddingOrMargin20,
                                color: AppColors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
