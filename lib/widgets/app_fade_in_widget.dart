import 'package:flutter/material.dart';
import 'package:simple_animations/animation_builder/custom_animation_builder.dart';

class FadeInWidget extends StatelessWidget {
  const FadeInWidget({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CustomAnimationBuilder<double>(
      tween: Tween<double>(begin: -30.0, end: 0.0),
      duration: const Duration(milliseconds: 350),
      child: child,
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(0, value),
          child: CustomAnimationBuilder<double>(
            tween: Tween<double>(begin: 0.0, end: 1.0),
            duration: const Duration(milliseconds: 350),
            child: child,
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: child,
              );
            },
          ),
        );
      },
    );
  }
}
