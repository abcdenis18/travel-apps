import 'package:flutter/material.dart';
import 'package:travel_apps/constants/styles.dart';
import 'package:travel_apps/constants/text.dart';

class AppTextfield extends StatelessWidget {
  final bool isPasswordField;
  final String? hint;

  const AppTextfield({
    Key? key,
    this.hint,
    this.isPasswordField = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: appBorderRadius,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 10,
            spreadRadius: .5,
            offset: Offset(0, 5),
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: TextField(
          obscureText: isPasswordField,
          style: TextStyle(
            color: appPrimaryColor,
            letterSpacing: .5,
          ),
          decoration: InputDecoration(
            hintText: isPasswordField ? textHintPassword : hint,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
