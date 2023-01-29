import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:travel_apps/constants/assets.dart';

class OnboardingController extends GetxController {
  var onboardingIndex = 0.obs;
  late PageController pageController;
  var onboardingContents = [
    {
      "image": Assets.assetsImagesOnboarding1,
      "title": "Make a travel plan",
      "subtitle":
          "Minima voluplatum corrupti nam repeliat saepe rem pariatur. Illo numquam dolorum consequantuur."
    },
    {
      "image": Assets.assetsImagesOnboarding2,
      "title": "Choose your distance & travel plan",
      "subtitle":
          "Minima voluplatum corrupti nam repeliat saepe rem pariatur. Illo numquam dolorum consequantuur."
    },
    {
      "image": Assets.assetsImagesOnboarding3,
      "title": "Enjoy your travel",
      "subtitle":
          "Minima voluplatum corrupti nam repeliat saepe rem pariatur. Illo numquam dolorum consequantuur."
    },
  ].obs;

  void onSlide(int index) => onboardingIndex.value = index;

  @override
  void onInit() {
    // TODO: implement onInit
    pageController = PageController(initialPage: onboardingIndex.value);
    super.onInit();
  }
}
