import 'package:autotrade/core/constants/colors.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({Key? key, required this.labelText, required this.hintText, required this.validator})
      : super(key: key);
  final String labelText;
  final String hintText;
  final Function(String? value)  validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: textFieldBorder),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: TextFormField(
        validator: (value) => validator(value),
        decoration: InputDecoration(
            labelText: labelText,
            hintText: hintText,
            border: InputBorder.none,
            filled: false,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none),
      ),
    );
  }
}
