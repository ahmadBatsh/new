import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibeacon/app/features/test/test_controller.dart';


class TestPage extends GetView<TestController> {
  const TestPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.initBeacon();

          },
        child: Icon(Icons.search),
      ),

      appBar: AppBar(
        title: Text('Flutter Beacon with GetX'),
      ),
      // body: Center(
      //   child: ListView.builder(
      //     itemCount: controller.beacons.length,
      //     itemBuilder: (context, index) {
      //       var beacon = controller.beacons[index];
      //       return
      //
      //          ListTile(
      //           title: Text('Major: ${beacon.major}, Minor: ${beacon.minor}'),
      //           subtitle: Text('Distance: ${beacon.accuracy} meters'),
      //
      //       );


          // },
        // ),
      // ),
      // ),
    );
  }
}
