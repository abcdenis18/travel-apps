import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:travel_apps/constants/styles.dart';
import 'package:travel_apps/constants/text.dart';

class AppSearchField extends StatelessWidget {
  final String? hint;
  const AppSearchField({Key? key, this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: appBorderRadius,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 10,
            spreadRadius: .5,
            offset: Offset(0, 5),
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          children: <Widget>[
            Icon(
              LucideIcons.search,
              color: appPrimaryColor,
              size: 22,
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: appFontSecondaryColor),
                  hintText: hint ?? textHintSearch,
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(width: 10),
            Icon(
              LucideIcons.mic,
              color: appPrimaryColor,
              size: 22,
            ),
          ],
        ),
      ),
    );
  }
}
