import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:travel_apps/constants/styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Padding(
          padding: EdgeInsets.all(appPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                LucideIcons.globe2,
                size: Adaptive.px(64),
              ),
              SizedBox(height: 5),
              Text('Travel Apps'),
            ],
          ),
        ),
      ),
    );
  }
}
