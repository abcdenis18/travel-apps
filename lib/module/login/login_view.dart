import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:travel_apps/constants/styles.dart';
import 'package:travel_apps/constants/text.dart';
import 'package:travel_apps/routes/app_routes.dart';
import 'package:travel_apps/widgets/app_main_button.dart';
import 'package:travel_apps/widgets/app_textfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackground,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(appPadding),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: Adaptive.sp(55),
                  child: Text(
                    textTitleLogin,
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: appFontPrimaryColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: .5,
                        ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: Adaptive.sp(75),
                  child: Text(
                    textCaptionLogin,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: appFontSecondaryColor,
                          letterSpacing: .5,
                        ),
                  ),
                ),
                SizedBox(height: 25),
                AppTextfield(
                  hint: textHintEmail,
                  isPasswordField: false,
                ),
                SizedBox(height: 20),
                AppTextfield(
                  hint: textHintEmail,
                  isPasswordField: true,
                ),
                SizedBox(height: 35),
                AppMainButton(
                  label: "Sign In",
                  onPressed: () => Get.offAllNamed(
                    "${AppRoutes.main}/?id=DEN&email=denisfajar24@gmail.com&name=Denis Fajar Sidik",
                  ),
                  icon: LucideIcons.arrowRight,
                ),
                SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      textSignWithGoogle,
                      style: TextStyle(color: appFontSecondaryColor),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _socialMediaCard(icon: LucideIcons.mail),
                        _socialMediaCard(icon: LucideIcons.facebook),
                        _socialMediaCard(icon: LucideIcons.twitter),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _socialMediaCard({required IconData icon}) {
    return Container(
      height: Adaptive.sp(28),
      width: Adaptive.sp(28),
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: icon == LucideIcons.twitter
            ? Color(0xff1BA4F2)
            : icon == LucideIcons.facebook
                ? Color(0xff4167B2)
                : Color(0xffED4131),
        borderRadius: appBorderRadius,
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
