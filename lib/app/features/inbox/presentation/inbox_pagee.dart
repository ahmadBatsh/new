import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibeacon/app/core/values/export/export_values.dart';

import 'inbox_controller.dart';

class InboxPage extends GetView<InboxController> {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(        color: AppColors.gray01,

        child: const Center(
          child: Text(
            'InboxPage',
          ),
        ),
      ),
    );
  }
}
