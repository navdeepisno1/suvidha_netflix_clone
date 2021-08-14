import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suvidha_netflix_clone/screens/dashboard/utils/constants/top_ten_india.dart';
import 'package:suvidha_netflix_clone/utils/constants/app_colors/app_colors.dart';
import 'package:suvidha_netflix_clone/utils/widgets/custom_heading/custom_heading.dart';
import 'package:suvidha_netflix_clone/utils/widgets/custom_text/custom_text.dart';

class TopSearchesContainer extends StatelessWidget {
  const TopSearchesContainer({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomHeading(
              heading: 'Top Searches',
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Column(
            children: List.generate(
              listTopTenIndia.length,
              (index) => _TopSearcheItem(
                image: listTopTenIndia[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _TopSearcheItem extends StatelessWidget {
  const _TopSearcheItem({key, this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      margin: EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.33,
            height: MediaQuery.of(context).size.width * 0.33 * 0.66,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: CustomText(
              'The Vampire Diaries',
              color: kColorTertiary,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Icon(
            Icons.play_circle_outline_rounded,
            color: kColorTertiary,
            size: 48,
          ),
        ],
      ),
    );
  }
}
