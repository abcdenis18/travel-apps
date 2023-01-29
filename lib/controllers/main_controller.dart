import 'package:get/get.dart';
import 'package:travel_apps/module/chats/chats_view.dart';
import 'package:travel_apps/module/explores/explores_view.dart';
import 'package:travel_apps/module/home/home_view.dart';
import 'package:travel_apps/module/profile/profile_view.dart';

class MainController extends GetxController {
  var pages = [
    HomeView(),
    ExploresView(),
    ChatsView(),
    ProfileView(),
  ];

  var pageIndex = 0.obs;

  void onChange(int index) => pageIndex.value = index;
}
