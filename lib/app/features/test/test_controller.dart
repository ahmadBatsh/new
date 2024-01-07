import 'dart:async';


import 'package:flutter/services.dart';
import 'package:flutter_beacon/flutter_beacon.dart';
import 'package:get/get.dart';



class TestController extends GetxController {
//   var beacons = <Beacon>[];
//
//   @override
//   void onInit() {
//     super.onInit();
//     // initBeacon();
//   }
//
//   Future<void> initBeacon() async {
//     try {
//       // if you want to manage manual checking about the required permissions
//       await flutterBeacon.initializeScanning;
//
//       // or if you want to include automatic checking permission
//       await flutterBeacon.initializeAndCheckScanning;
//     } on PlatformException catch(e) {
//       // library failed to initialize, check code and message
//       print('123456789456');
//     }
//
//     final regions = <Region>[];
//
//
//
//       // android platform, it can ranging out of beacon that filter all of Proximity UUID
//       regions.add(Region(identifier: 'jamal.com',proximityUUID: '5e8b8d5b-0b6a-4fbb-875a-f99917d6cb5f'));
//
//
// // to start ranging beacons
//     StreamSubscription _streamRanging = flutterBeacon.ranging(regions).listen((RangingResult result) {
//       // result contains a region and list of beacons found
//       // list can be empty if no matching beacons were found in range
//       print('Found ${result.beacons.length+1} beacons');
//       for (var beacon in result.beacons) {
//         print('sssssssss ${beacon.proximityUUID}: ${beacon.major}: ${beacon.minor}: ${beacon.accuracy}');
//       }
//     });
//
// // to stop ranging beacons
// //     _streamRanging.cancel();
//
//   }












////////////////////////

  Future<void> initBeacon() async{try {
    await flutterBeacon.initializeScanning;
  } on PlatformException catch(e) {
    // library failed to initialize, check code and message
  }
  final regions = <Region>[];


  if (false) {
    regions.add(Region(
        identifier: 'MyBeacon',
        proximityUUID: 'YourSpecificUUID'));
  } else {
    regions.add(Region(identifier: 'com.beacon',proximityUUID: '5e8b8d5b-0b6a-4fbb-875a-f99917d6cb5f'));
  }

  StreamSubscription _streamRanging = flutterBeacon.ranging(regions).listen((RangingResult result) {
    print('Found ${result.beacons.length} beacons');
    for (var beacon in result.beacons) {
      print('${beacon.proximityUUID}: ${beacon.major}: ${beacon.minor}: ${beacon.accuracy}');
    }
  });

// to stop ranging beacons
  _streamRanging.onDone(() { });





  }



























}


//region State



  //endregion State

  //region Use Cases


  //endregion Use Cases

  //region Constructors

  //endregion Constructors

  //region Lifecycle


  //endregion Lifecycle

  //region Public functions


  //endregion Public functions

  //region Private functions

  //region Private functions for dealing with events


  //endregion Private functions for dealing with events

  void _workers() {}

  void _processArguments() {}

//endregion Private functions


