import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:travel_apps/constants/styles.dart';
import 'package:travel_apps/controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.pageIndex.value,
          children: controller.pages,
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedItemColor: appPrimaryColor,
          unselectedItemColor: appFontSecondaryColor,
          currentIndex: controller.pageIndex.value,
          type: BottomNavigationBarType.fixed,
          onTap: (index) => controller.onChange(index),
          items: List.generate(
            controller.pages.length,
            (index) => BottomNavigationBarItem(
              icon: Icon(
                index == 0
                    ? LucideIcons.home
                    : index == 1
                        ? LucideIcons.globe2
                        : index == 2
                            ? LucideIcons.users
                            : LucideIcons.settings,
              ),
              label: "",
            ),
          ),
        ),
      ),
    );
  }
}
