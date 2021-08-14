import 'package:flutter/material.dart';
import 'package:suvidha_netflix_clone/utils/constants/app_colors/app_colors.dart';
import 'package:suvidha_netflix_clone/utils/widgets/custom_heading/custom_heading.dart';
import 'package:suvidha_netflix_clone/utils/widgets/custom_text/custom_text.dart';
import 'package:suvidha_netflix_clone/utils/widgets/icon_with_title/icon_with_title.dart';

class ShowContainer extends StatelessWidget {
  const ShowContainer({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.66,
      width: MediaQuery.of(context).size.width,
      child: Container(
        decoration: BoxDecoration(
          color: kColorSecondary.withOpacity(0.25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    kColorSecondary.withOpacity(0),
                    kColorSecondary.withOpacity(1),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomHeading(
                    heading: 'How To Not Train Your Dragon',
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Wrap(
                    children: [
                      CustomText(
                        'Chilling',
                        fontWeight: FontWeight.bold,
                        color: kColorTertiary,
                        fontSize: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical:
                                MediaQuery.of(context).size.width * 0.005),
                        child: Icon(
                          Icons.circle,
                          color: kColorTertiary,
                          size: MediaQuery.of(context).size.width * 0.027,
                        ),
                      ),
                      CustomText(
                        'Adventure',
                        fontWeight: FontWeight.bold,
                        color: kColorTertiary,
                        fontSize: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical:
                                MediaQuery.of(context).size.width * 0.005),
                        child: Icon(
                          Icons.circle,
                          color: kColorTertiary,
                          size: MediaQuery.of(context).size.width * 0.027,
                        ),
                      ),
                      CustomText(
                        'Animation',
                        fontWeight: FontWeight.bold,
                        color: kColorTertiary,
                        fontSize: MediaQuery.of(context).size.width * 0.03,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconWithTitle(
                          icon: Icons.add,
                          title: 'My List',
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: kColorTertiary,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          child: Row(
                            children: [
                              Icon(
                                Icons.play_arrow_rounded,
                                size: MediaQuery.of(context).size.width * 0.06,
                              ),
                              CustomText(
                                'Play',
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.03,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),
                        IconWithTitle(
                          icon: Icons.info_outline_rounded,
                          title: 'Info',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://popcornusa.s3.amazonaws.com/movies/650/2419-11848-HowToTra.jpg'),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
