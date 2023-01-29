import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:travel_apps/constants/styles.dart';

class AppImageCard extends StatelessWidget {
  final String url;
  final double height;
  final double width;
  final bool isCircle;
  final EdgeInsetsGeometry? margin;
  const AppImageCard({
    Key? key,
    required this.url,
    this.isCircle = false,
    this.height = 60,
    this.width = 60,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
        borderRadius: isCircle ? null : appBorderRadius,
        boxShadow: appBoxShadow,
      ),
      child: CachedNetworkImage(
        imageUrl: url,
        imageBuilder: (context, imageProvider) => Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
            borderRadius: isCircle ? null : appBorderRadius,
          ),
        ),
      ),
    );
  }
}
