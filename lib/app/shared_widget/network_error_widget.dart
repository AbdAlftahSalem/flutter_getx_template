import 'package:autotrade/core/constants/strings/string_keys.dart';
import 'package:autotrade/view/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NetworkErrorWidget extends StatelessWidget {
  const NetworkErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: Center(
        child: CustomText(
          txt: StringKeys.instance.networkErrorPleaseCheckYourWifi,
          maxLine: 5,
          textAlign: TextAlign.center,
          height: 1.8,
          color: Theme.of(context).textTheme.labelLarge!.color,
        ),
      ),
    );
  }
}
