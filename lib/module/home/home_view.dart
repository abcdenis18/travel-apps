import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:travel_apps/constants/styles.dart';
import 'package:travel_apps/constants/text.dart';
import 'package:travel_apps/module/home/widgets/header.dart';
import 'package:travel_apps/module/home/widgets/places_card.dart';
import 'package:travel_apps/module/home/widgets/popular_card.dart';
import 'package:travel_apps/widgets/app_search_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(appPadding),
        child: ListView(
          physics: BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          children: [
            Header(),
            SizedBox(height: 15),
            AppSearchField(),
            SizedBox(height: 25),
            PlacesCard(),
            SizedBox(height: 15),
            PopularCard(),
          ],
        ),
      ),
    );
  }
}
