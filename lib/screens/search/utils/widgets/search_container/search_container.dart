import 'package:flutter/material.dart';
import 'package:suvidha_netflix_clone/utils/constants/app_colors/app_colors.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: kColorTertiary,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.symmetric(horizontal: 48, vertical: 6),
      child: Row(
        children: [
          Icon(
            Icons.search_rounded,
            color: kColorSecondary.withOpacity(0.33),
            size: MediaQuery.of(context).size.width * 0.06,
          ),
          SizedBox(
            width: 24,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for a movie,genre,...',
                hintStyle: TextStyle(
                  color: kColorSecondary.withOpacity(0.5),
                  fontSize: MediaQuery.of(context).size.width * 0.03,
                  fontWeight: FontWeight.w700,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 24,
          ),
          Icon(
            Icons.mic_none_outlined,
            color: kColorSecondary.withOpacity(0.33),
            size: MediaQuery.of(context).size.width * 0.06,
          ),
        ],
      ),
    );
  }
}
