import 'package:flutter/cupertino.dart';

import '../core/values/app_colors.dart';
import '../core/values/app_dimensions.dart';

class AppCircleWidget extends StatelessWidget {
  final double width;
  final double height;
  final double circular;
  final String imageUrl;
  final double padding;

  const AppCircleWidget({
    Key? key,
    required this.width,
    required this.height,
     this.imageUrl = '',
    this.circular = AppDimensions.paddingOrMargin20,
    this.padding = AppDimensions.paddingOrMargin08,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(padding),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(circular),
        child: Container(
          height: height,
          width: width,
          alignment: Alignment.center,
          color: AppColors.blue01,
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
