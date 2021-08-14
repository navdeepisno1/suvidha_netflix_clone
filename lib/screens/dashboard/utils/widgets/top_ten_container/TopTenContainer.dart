import 'package:flutter/material.dart';
import 'package:suvidha_netflix_clone/screens/dashboard/utils/constants/top_ten_india.dart';
import 'package:suvidha_netflix_clone/utils/constants/app_colors/app_colors.dart';
import 'package:suvidha_netflix_clone/utils/widgets/custom_text/custom_text.dart';

class TopTenContainer extends StatelessWidget {
  const TopTenContainer({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: CustomText(
              'Top 10 in India Today',
              color: kColorTertiary,
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width * 0.05,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            padding: EdgeInsets.only(right: 24),
            height: MediaQuery.of(context).size.width * 0.33 * 1.440,
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              children: List.generate(
                listTopTenIndia.length,
                (index) => _TopTenMovieContainerWithRank(
                  rank: index,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _TopTenMovieContainerWithRank extends StatelessWidget {
  const _TopTenMovieContainerWithRank({key, this.rank}) : super(key: key);

  final int rank;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.33,
      width: MediaQuery.of(context).size.width * 0.4,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              height: MediaQuery.of(context).size.width * 0.33 * 1.440,
              width: MediaQuery.of(context).size.width * 0.33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: NetworkImage(listTopTenIndia[rank]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -35,
            left: 12,
            child: Container(
              padding: EdgeInsets.zero,
              //color: kColorPrimary,
              height: MediaQuery.of(context).size.width * 0.33 * 1.440,
              alignment: Alignment.bottomLeft,
              child: CustomText(
                '${rank + 1}',
                fontSize: 204,
                color: kColorTertiary.withOpacity(0.75),
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
