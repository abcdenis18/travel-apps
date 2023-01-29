import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:travel_apps/constants/styles.dart';
import 'package:travel_apps/widgets/app_image_card.dart';

class AppPlaceCardImage extends StatelessWidget {
  final double? height;
  final double? width;
  final String imageUrl;
  final String desc;
  final String location;
  final String rating;
  const AppPlaceCardImage({
    Key? key,
    required this.imageUrl,
    required this.desc,
    required this.location,
    required this.rating,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppImageCard(
          height: height ?? 0,
          width: width ?? 0,
          margin: EdgeInsets.only(right: 15),
          url: imageUrl,
        ),
        Container(
          height: height ?? 0,
          width: width ?? 0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black87, Colors.white10],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
            borderRadius: appBorderRadius,
          ),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      desc,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          LucideIcons.mapPin,
                          color: appPrimaryColor,
                          size: 16,
                        ),
                        SizedBox(width: 5),
                        Text(
                          location,
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      LucideIcons.star,
                      color: Colors.yellow.shade700,
                      size: 15,
                    ),
                    SizedBox(width: 5),
                    Text(
                      rating,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
