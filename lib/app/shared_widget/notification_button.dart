import 'package:autotrade/controller/notification_controller.dart';
import 'package:autotrade/controller/theme_controller.dart';
import 'package:autotrade/core/constants/AppAssets.dart';
import 'package:autotrade/core/constants/colors.dart';
import 'package:autotrade/view/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'ui/notification_screen/notification_screen.dart';
import 'package:badges/badges.dart' as badges;

class NotificationButton extends StatelessWidget {
  const NotificationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.find();
    return Container(
      width: 41.w,
      height: 41.h,
      margin: EdgeInsets.only(left: 22.w, right: 22.w, top: 8.h),
      decoration: BoxDecoration(
        border: Border.all(
          color:
              themeController.darkTheme ? Colors.transparent : textFieldBorder,
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(12.r),
        ),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: badges.Badge(
        badgeContent: GetBuilder<NotificationController>(
          builder: (controller) {
            return CustomText(
              txt: controller.notificationList.length >= 10
                  ? "+9"
                  : controller.unreadNotificationList.length.toString(),
              color: Colors.white,
            );
          },
        ),
        child: InkWell(
          onTap: () => Get.to(() => const NotificationScreen()),
          child: Center(
            child: SvgPicture.asset(
              AppAssets.ic_notification,
              color: Theme.of(context).textTheme.labelLarge!.color,
              width: 24.w,
              height: 24.h,
            ),
          ),
        ),
      ),
    );
  }
}
