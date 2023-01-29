import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:travel_apps/constants/styles.dart';

class AppMainButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function() onPressed;
  const AppMainButton({
    Key? key,
    required this.label,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: appPrimaryColor,
          borderRadius: appBorderRadius,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: .85,
              ),
            ),
            SizedBox(width: 10),
            Icon(
              icon,
              color: Colors.white,
              size: Adaptive.px(20),
            )
          ],
        ),
      ),
    );
  }
}
