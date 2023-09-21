import 'package:autotrade/core/constants/themes/color_manger.dart';
import 'package:autotrade/view/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RounderWidget extends StatelessWidget {
  final String data;

  const RounderWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 4.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: ColorManager.instance.secSecWriteLightColor.withOpacity(0.5),
        ),
      ),
      child: CustomText(
        txt: data,
        color: ColorManager.instance.secSecWriteLightColor.withOpacity(0.5),
      ),
    );
  }
}
