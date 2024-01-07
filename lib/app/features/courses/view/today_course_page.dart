import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibeacon/app/core/values/export/export_values.dart';

import '../course_controller.dart';

class CoursesTodayView extends GetView<CoursesController> {
  const CoursesTodayView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              title: Text(
                '${AppStrings.course} ${index }',
              ),
              subtitle: const Text(
                AppStrings.instructor,
              ),
              onTap: () {},
              leading: const Icon(
                Icons.edit,
              ),
              trailing: const Icon(
                Icons.delete,
              ),
            ),
            const Divider(),
          ],
        );
      },
    );
  }
}
