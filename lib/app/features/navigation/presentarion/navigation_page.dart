import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ibeacon/app/core/values/export/export_values.dart';
import 'package:ibeacon/app/global_widgets/export/export_global_widgets.dart';

import '../../../global_widgets/app_circle_widget.dart';
import 'navigation_controller.dart';

class NavigationPage extends GetView<NavigationController> {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        //Appbar
        appBar: AppBar(
            title: const Text('  StudentName'),backgroundColor: AppColors.primary,
            elevation: AppDimensions.zero,
            actions: const [
              Padding(
                  padding: EdgeInsets.all(
                    AppDimensions.paddingOrMargin20,
                  ),
                  child: Icon(Icons.ac_unit))
            ],
            // leading: const AppCircleWidget(
            //   width: AppDimensions.paddingOrMargin20,
            //   height: AppDimensions.paddingOrMargin20,
            //   padding: AppDimensions.paddingOrMargin08,
            //   imageUrl: '',
            // )
    ),
        body: Column(
          children: [
            Obx(
              () => Expanded(
                child: IndexedStack(
                  index: controller.selectIndex.value,
                  children: controller.Pages,
                ),
              ),
            ),
            Obx(
              () => AppTabBarWidget(
                  selectedIndex: controller.selectIndex(),
                  items: controller.items,
                  onTap: (int index) {
                    controller.selectIndex.value = index;
                    controller.goToPage(index);

                    print(controller.selectIndex.value);
                  }),
            ),
          ],
        ));
  }
}
