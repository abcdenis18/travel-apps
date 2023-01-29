import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:travel_apps/constants/styles.dart';
import 'package:travel_apps/routes/app_pages.dart';
import 'package:travel_apps/routes/app_routes.dart';
import 'package:travel_apps/services/injector.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupInjector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) => GetMaterialApp(
        title: 'Travel Apps',
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme().apply(
            bodyColor: appFontPrimaryColor,
          ),
          primarySwatch: Colors.blue,
        ),
        initialRoute: AppRoutes.init,
        getPages: AppPages.pages,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
