import 'package:cached_network_image/cached_network_image.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:travel_apps/constants/styles.dart';
import 'package:travel_apps/constants/text.dart';
import 'package:travel_apps/services/injector.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          textExplore,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
                letterSpacing: .5,
              ),
        ),
        CachedNetworkImage(
          imageUrl: injector.get<Faker>().image.image(
            keywords: ['man'],
            random: true,
            width: 64,
            height: 64,
          ),
          imageBuilder: (context, imageProvider) {
            return Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: imageProvider),
                border: Border.all(color: Colors.white, width: 3),
                boxShadow: appBoxShadow,
              ),
            );
          },
          progressIndicatorBuilder: (context, url, progress) {
            return Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: appFontSecondaryColor.withOpacity(.25),
              ),
            );
          },
          errorWidget: (context, url, error) => Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: appFontSecondaryColor.withOpacity(.25),
            ),
          ),
        ),
      ],
    );
  }
}
