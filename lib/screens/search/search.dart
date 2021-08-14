import 'package:flutter/material.dart';
import 'package:suvidha_netflix_clone/screens/dashboard/utils/constants/top_ten_india.dart';
import 'package:suvidha_netflix_clone/screens/search/utils/widgets/search_container/search_container.dart';
import 'package:suvidha_netflix_clone/screens/search/utils/widgets/top_cateogries_container/top_categories_container.dart';
import 'package:suvidha_netflix_clone/screens/search/utils/widgets/top_searches_container/top_searches_container.dart';
import 'package:suvidha_netflix_clone/utils/constants/app_colors/app_colors.dart';
import 'package:suvidha_netflix_clone/utils/widgets/custom_heading/custom_heading.dart';
import 'package:suvidha_netflix_clone/utils/widgets/custom_text/custom_text.dart';
import 'package:suvidha_netflix_clone/utils/widgets/profile_container/profile_container.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({key, this.tagId}) : super(key: key);
  final int tagId;
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 12,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 36),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: kColorTertiary,
                    size: MediaQuery.of(context).size.width * 0.06,
                  ),
                ),
                ProfileContainer(
                  tagId: widget.tagId,
                  size: MediaQuery.of(context).size.width * 0.06,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          SearchContainer(),
          SizedBox(
            height: 24,
          ),
          TopCategoriesContainer(),
          SizedBox(
            height: 24,
          ),
          TopSearchesContainer(),
        ],
      ),
    );
  }
}
