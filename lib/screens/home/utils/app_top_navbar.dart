import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suvidha_netflix_clone/utils/constants/app_colors/app_colors.dart';

class HomeScreenTopNavbar extends StatelessWidget {
  const HomeScreenTopNavbar({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            child: Icon(
              Icons.edit,
              size: MediaQuery.of(context).size.width * 0.06,
              color: kColorTertiary.withOpacity(0),
            ),
          ),
          Expanded(
            child: Container(
              child: SvgPicture.asset(
                'assets/logo/logo_netflix.svg',
                semanticsLabel: 'Netflix logo',
                width: 84,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: Icon(
              Icons.edit,
              size: 32,
              color: kColorTertiary,
            ),
          ),
        ],
      ),
    );
  }
}
