import 'package:flutter/material.dart';
import 'package:suvidha_netflix_clone/utils/constants/app_colors/app_colors.dart';
import 'package:suvidha_netflix_clone/utils/widgets/custom_text/custom_text.dart';

class CustomHeading extends StatelessWidget {
  const CustomHeading({key, this.heading}) : super(key: key);

  final String heading;

  @override
  Widget build(BuildContext context) {
    return CustomText(
      '$heading',
      fontWeight: FontWeight.bold,
      color: kColorTertiary,
      fontSize: 28,
    );
  }
}
