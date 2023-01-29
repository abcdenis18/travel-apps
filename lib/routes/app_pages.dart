import 'package:get/get.dart';
import 'package:travel_apps/controllers/main_controller.dart';
import 'package:travel_apps/controllers/onboarding_controller.dart';
import 'package:travel_apps/controllers/splash_controller.dart';
import 'package:travel_apps/module/home/home_view.dart';
import 'package:travel_apps/module/login/login_view.dart';
import 'package:travel_apps/module/main/main_view.dart';
import 'package:travel_apps/module/onboarding/onboarding_view.dart';
import 'package:travel_apps/module/splash/splash_view.dart';
import 'package:travel_apps/routes/app_routes.dart';

class AppPages {
  AppPages._();

  static List<GetPage> pages = [
    GetPage(
      name: AppRoutes.init,
      page: () => SplashView(),
      binding: BindingsBuilder.put(() => SplashController()),
    ),
    GetPage(
      name: AppRoutes.onboarding,
      page: () => OnboardingView(),
      binding: BindingsBuilder.put(() => OnboardingController()),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginView(),
    ),
    GetPage(
      name: AppRoutes.main,
      page: () => MainView(),
      binding: BindingsBuilder.put(() => MainController()),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomeView(),
    ),
  ];
}
