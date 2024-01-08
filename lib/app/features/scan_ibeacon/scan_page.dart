import 'package:flutter/material.dart';
import 'package:ibeacon/app/core/values/export/export_values.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.primary,
          centerTitle: true,
          leading: const Icon(Icons.arrow_back_ios_new_outlined),
          title: const Text(AppStrings.scanBeacon)),
      body: Scaffold(
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(
                AppDimensions.paddingOrMargin50,
              ),
              child: Text(
                AppStrings.note01,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(AppDimensions.radius30),
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
                    SizedBox(
                      height: AppDimensions.paddingOrMargin08,
                    ),
                    Padding(
                      padding: EdgeInsets.all(
                        AppDimensions.paddingOrMargin20,
                      ),
                      child: Text(
                        AppStrings.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppDimensions.paddingOrMargin20,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
