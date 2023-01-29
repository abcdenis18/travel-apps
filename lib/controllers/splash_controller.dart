import 'package:get/get.dart';
import 'package:travel_apps/routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    Future.delayed(Duration(milliseconds: 1500), () {
      Get.offAllNamed(AppRoutes.onboarding);
    });
    super.onReady();
  }
}
