import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibeacon/app/core/values/export/export_values.dart';

class AppListTileWidget extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  final String subtitle;
  final int indexNotification;
  final Widget? leading;
  final Widget? trailing;
  final void Function() onTap;

  const AppListTileWidget({
    Key? key,
    this.backgroundColor = AppColors.white,
    required this.title,
    this.subtitle = '',
      this.indexNotification = 0,
    this.leading,
    required this.onTap, this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppDimensions.radius20,
          ),
        ),
      ),
      margin: const EdgeInsets.only(
        top: AppDimensions.paddingOrMargin10,
        right: AppDimensions.paddingOrMargin20,
        left: AppDimensions.paddingOrMargin20,
      ),
      padding: const EdgeInsets.symmetric(horizontal:
        AppDimensions.paddingOrMargin10,
      ),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle:Text(subtitle),
        trailing: indexNotification > 0
            ? ClipRRect(
                borderRadius: BorderRadius.circular(
                  AppDimensions.paddingOrMargin20,
                ),
                child: Container(
                  height: AppDimensions.height20,
                  width: AppDimensions.width20,
                  alignment: Alignment.center,
                  color: AppColors.blue01,
                  child: Text(
                    '$indexNotification',
                  ),
                ),
              )
            : null,
        leading: leading,
        onTap: onTap,
      ),
    );
  }
}
