import 'package:flutter/material.dart';
import 'package:suvidha_netflix_clone/screens/dashboard/utils/constants/top_ten_india.dart';
import 'package:suvidha_netflix_clone/utils/constants/app_colors/app_colors.dart';
import 'package:suvidha_netflix_clone/utils/widgets/custom_heading/custom_heading.dart';
import 'package:suvidha_netflix_clone/utils/widgets/custom_text/custom_text.dart';

class TopCategoriesContainer extends StatelessWidget {
  const TopCategoriesContainer({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> listCategories = [
      'International',
      'Anime',
      'Action',
      'Fantasy',
      'Comedies',
      'Dramas',
      'Award Winners',
      'Critically Acclaimes',
      'Thrillers',
      'Romance',
    ];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: CustomHeading(
              heading: 'Top Categories',
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Column(
            children: List.generate(
                5,
                (index) => Row(
                      children: [
                        Expanded(
                          child: _CategoriesContainer(
                            category: listCategories[2 * index],
                            image: listTopTenIndia[2 * index],
                          ),
                        ),
                        Expanded(
                          child: _CategoriesContainer(
                            category: listCategories[2 * index],
                            image: listTopTenIndia[2 * index + 1],
                          ),
                        ),
                      ],
                    )),
          ),
        ],
      ),
    );
  }
}

class _CategoriesContainer extends StatelessWidget {
  const _CategoriesContainer({key, this.category, this.image})
      : super(key: key);
  final String category;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: kColorSecondary.withOpacity(0.5),
        ),
        padding: EdgeInsets.symmetric(horizontal: 24),
        height: 75,
        alignment: Alignment.centerLeft,
        child: CustomText(
          '$category',
          color: kColorTertiary,
          fontSize: 24,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
