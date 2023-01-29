import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:travel_apps/services/injector.dart';
import 'package:travel_apps/widgets/app_place_card_image.dart';

class PlacesCard extends StatelessWidget {
  const PlacesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.px,
      child: ListView(
        physics: BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        scrollDirection: Axis.horizontal,
        children: List.generate(
          8,
          (index) => Wrap(
            children: [
              AppPlaceCardImage(
                height: 240.px,
                width: 220.px,
                imageUrl: injector.get<Faker>().image.image(
                  random: true,
                  keywords: ['beach', 'place', 'bali'],
                ),
                desc: "Kuta Beach",
                location: "Indonesia",
                rating: "4.8",
              )
            ],
          ),
        ),
      ),
    );
  }
}
