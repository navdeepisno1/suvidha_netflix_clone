import 'package:flutter/material.dart';
import 'package:suvidha_netflix_clone/utils/constants/app_colors/app_colors.dart';
import 'package:suvidha_netflix_clone/utils/widgets/custom_text/custom_text.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Center(
        child: CustomText(
          'Copyright 2021',
          fontSize: 18,
          color: kColorTertiary,
        ),
      ),
    );
  }
}
