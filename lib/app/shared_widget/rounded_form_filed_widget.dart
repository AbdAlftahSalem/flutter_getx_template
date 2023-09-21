import 'package:autotrade/core/constants/strings/string_keys.dart';
import 'package:autotrade/core/constants/themes/color_manger.dart';
import 'package:autotrade/view/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RoundedFormFiledWidget extends StatelessWidget {
  final String? hintTxt;
  final String? label;
  final Function? onChange;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final Color? fillColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final TextAlign? textAlign;
  final List<TextInputFormatter>? inputFormatters;
  final bool enable;

  const RoundedFormFiledWidget({
    super.key,
    this.hintTxt,
    this.label = "",
    this.keyboardType,
    this.controller,
    this.onChange,
    this.fillColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.inputFormatters,
    this.textAlign,
    this.suffixIcon,
    this.enable = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,
      textAlignVertical: TextAlignVertical.center,
      style: TextStyle(
        color: Theme.of(context).textTheme.labelLarge!.color,
        fontSize: 12.sp,
      ),
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return StringKeys.instance.pleaseEnterValidData.tr;
        }
        return null;
      },
      textAlign: textAlign ?? TextAlign.start,
      decoration: InputDecoration(
        hintText: (hintTxt ?? "").tr,
        isDense: true,
        enabled: enable,
        label: CustomText(
          txt: label,
          fontSize: 14.sp,
          color: ColorManager.instance.secSecWriteLightColor,
          overflow: TextOverflow.ellipsis,
        ),
        fillColor: fillColor ?? Theme.of(context).colorScheme.surface,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            color: ColorManager.instance.secSecWriteLightColor.withOpacity(0.5),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            color: ColorManager.instance.secSecWriteLightColor.withOpacity(0.5),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: ColorManager.instance.redColor,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: ColorManager.instance.redColor,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            color: ColorManager.instance.secSecWriteLightColor.withOpacity(0.5),
          ),
        ),
        hintStyle: TextStyle(
          fontFamily: "Inter",
          color: ColorManager.instance.secSecWriteLightColor,
          fontSize: 8.sp,
          overflow: TextOverflow.ellipsis,
        ),
        // suffix: suffixIcon,
        suffix: suffixIcon,
        contentPadding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
      ),
      onChanged: (value) => onChange == null ? () {} : onChange!(value),
      keyboardType: TextInputType.number,
    );
  }
}
