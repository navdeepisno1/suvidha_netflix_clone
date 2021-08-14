import 'package:flutter/material.dart';
import 'package:suvidha_netflix_clone/screens/search/search.dart';
import 'package:suvidha_netflix_clone/utils/constants/app_colors/app_colors.dart';
import 'package:suvidha_netflix_clone/utils/widgets/custom_text/custom_text.dart';
import 'package:suvidha_netflix_clone/utils/widgets/profile_container/profile_container.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({key, this.tagId}) : super(key: key);

  final int tagId;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          padding: EdgeInsets.only(top: 24, bottom: 24),
          decoration: BoxDecoration(
            color: kColorSecondary.withOpacity(0.33),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 12,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/icon/icon_netflix.png',
                      width: 32,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SearchScreen(
                                  tagId: tagId,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                            child: Icon(
                              Icons.search_rounded,
                              color: kColorTertiary,
                              size: 32,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          child: ProfileContainer(
                            tagId: tagId,
                            size: 32,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomText(
                      'TV Shows',
                      fontWeight: FontWeight.bold,
                      color: kColorTertiary,
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                    ),
                    CustomText(
                      'Movies',
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      color: kColorTertiary,
                    ),
                    CustomText(
                      'My List',
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      color: kColorTertiary,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
