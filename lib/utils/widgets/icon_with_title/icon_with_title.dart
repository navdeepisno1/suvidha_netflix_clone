import 'package:flutter/material.dart';
import 'package:suvidha_netflix_clone/utils/constants/app_colors/app_colors.dart';
import 'package:suvidha_netflix_clone/utils/widgets/custom_text/custom_text.dart';

class IconWithTitle extends StatelessWidget {
  const IconWithTitle({key, this.icon, this.title}) : super(key: key);
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Icon(
            icon,
            size: MediaQuery.of(context).size.width * 0.06,
            color: kColorTertiary,
          ),
          SizedBox(
            height: 6,
          ),
          CustomText(
            title,
            fontSize: MediaQuery.of(context).size.width * 0.022,
            color: kColorTertiary,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
