import 'package:cars/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class DoubleText extends StatelessWidget {
  const DoubleText({
    super.key,
    required this.largeText,
    required this.smallText,
    this.largeTextColor= AppColor.white,
    this.largeTextSize = 24
  });

  final String largeText;
  final String smallText;
  final Color largeTextColor;
  final double largeTextSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          largeText,
          style: TextStyle(
              fontWeight: .bold,
              fontSize: largeTextSize,
              color: largeTextColor
          ),
        ),
        Text(
          smallText,
          style: TextStyle(
            fontWeight: .normal,
            fontSize: 12,
            color:AppColor.lightGrey,
          ),
        ),
      ],
    );
  }
}
