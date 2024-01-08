import 'package:flutter/material.dart';
import 'package:ibeacon/app/core/values/export/export_values.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(backgroundColor: AppColors.white,
            appBar: AppBar(
                backgroundColor: AppColors.primary,
                centerTitle: true,
                leading: const Icon(Icons.arrow_back_ios_new_outlined),
                title: const Text(AppStrings.thePageIsClosed)),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/image03.png',width: widthScreen,fit: BoxFit.contain,),
                const Text(AppStrings.note03,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w700)),
              ],
            )));
  }
}
