import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibeacon/app/core/values/export/export_values.dart';
import 'package:ibeacon/app/global_widgets/app_list_tile_widget.dart';

import '../course_controller.dart';

class CoursesAllView extends GetView<CoursesController> {
  const CoursesAllView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              title: Text(
                '${AppStrings.course} ${index + 1}',
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
