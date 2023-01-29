import 'package:simple_animations/simple_animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:travel_apps/constants/styles.dart';
import 'package:travel_apps/controllers/onboarding_controller.dart';
import 'package:travel_apps/routes/app_routes.dart';
import 'package:travel_apps/widgets/app_fade_in_widget.dart';
import 'package:travel_apps/widgets/app_main_button.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackground,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(appPadding),
          child: Column(
            children: <Widget>[
              Expanded(
                  flex: 4,
                  child: Obx(
                    () => PageView.builder(
                      controller: controller.pageController,
                      physics: BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics(),
                      ),
                      itemCount: controller.onboardingContents.length,
                      itemBuilder: (context, index) {
                        return Wrap(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(controller.onboardingContents[index]
                                    ['image']!),
                                Text(
                                  controller.onboardingContents[index]
                                      ['title']!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  controller.onboardingContents[index]
                                      ['subtitle']!,
                                  style:
                                      TextStyle(color: appFontSecondaryColor),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                      onPageChanged: (index) => controller.onSlide(index),
                    ),
                  )),
              Expanded(
                  child: Column(
                children: <Widget>[
                  Obx(
                    () => controller.onboardingIndex.value == 2
                        ? FadeInWidget(
                            child: AppMainButton(
                              label: "Let's Get Started",
                              icon: LucideIcons.arrowRight,
                              onPressed: () => Get.offAllNamed(
                                  "${AppRoutes.login}?id=DEN&name=Denis Fajar Sidik"),
                            ),
                          )
                        : InkWell(
                            onTap: () =>
                                controller.pageController.animateToPage(
                              controller.onboardingIndex.value + 1,
                              duration: Duration(milliseconds: 350),
                              curve: Curves.easeIn,
                            ),
                            child: SizedBox(
                              height: 50,
                              width: double.maxFinite,
                              child: Center(
                                child: Text(
                                  "Skip",
                                  style: TextStyle(
                                    color: appFontSecondaryColor,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: .85,
                                  ),
                                ),
                              ),
                            ),
                          ),
                  ),
                  SizedBox(height: 35),
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        controller.onboardingContents.length,
                        (index) => AnimatedContainer(
                          margin: EdgeInsets.only(right: 5),
                          height: 8,
                          width: controller.onboardingIndex.value == index
                              ? 35
                              : 8,
                          duration: Duration(milliseconds: 500),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: controller.onboardingIndex.value == index
                                ? appPrimaryColor
                                : Colors.grey.shade300,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
