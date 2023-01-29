import 'package:cached_network_image/cached_network_image.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:travel_apps/constants/styles.dart';
import 'package:travel_apps/constants/text.dart';
import 'package:travel_apps/services/injector.dart';
import 'package:travel_apps/widgets/app_image_card.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          textTitlePopularPlace,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 75,
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: List.generate(
              8,
              (index) => Wrap(
                children: [
                  AppImageCard(
                    margin: EdgeInsets.only(right: 10),
                    isCircle: true,
                    url: injector.get<Faker>().image.image(
                      height: 64,
                      width: 64,
                      random: true,
                      keywords: ['beach', 'place'],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
