import 'package:flutter/material.dart';
import 'package:suvidha_netflix_clone/screens/dashboard/utils/constants/top_ten_india.dart';
import 'package:suvidha_netflix_clone/screens/downloads/utils/app_top_navbar.dart';
import 'package:suvidha_netflix_clone/utils/constants/app_colors/app_colors.dart';
import 'package:suvidha_netflix_clone/utils/widgets/app_bottom_navbar/app_bottom_navbar.dart';
import 'package:suvidha_netflix_clone/utils/widgets/custom_text/custom_text.dart';

class DownloadsScreen extends StatefulWidget {
  const DownloadsScreen({key}) : super(key: key);

  @override
  _DownloadsScreenState createState() => _DownloadsScreenState();
}

class _DownloadsScreenState extends State<DownloadsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    DownloadAppBar(),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: kColorTertiary.withOpacity(0.75),
                            size: 28,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          CustomText(
                            'Smart Downloads',
                            color: kColorTertiary.withOpacity(0.75),
                            fontSize: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 24),
                            child: Column(
                              children: [
                                CustomText(
                                  'Introducing Downloads for You',
                                  color: kColorTertiary,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                CustomText(
                                  'We\'ll download a personalised selection of movies and shows for you, so there\'s always something to watch on your phone',
                                  color: kColorTertiary.withOpacity(0.75),
                                  fontSize: 16,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 56,
                          ),
                          Container(
                            child: Stack(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  height:
                                      MediaQuery.of(context).size.width * 0.5,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(
                                        MediaQuery.of(context).size.width *
                                            0.5),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    transform: Matrix4.rotationZ(0.1),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        _MovieContainer(
                                          image: listTopTenIndia[1],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        _MovieContainer(
                                          image: listTopTenIndia[0],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    transform: Matrix4.rotationZ(-0.1),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        _MovieContainer(
                                          image: listTopTenIndia[2],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 48,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 24),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 16),
                            child: Center(
                              child: CustomText(
                                'SET UP',
                                color: kColorTertiary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 48,
                          ),
                          Wrap(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 24),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.75),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 16),
                                child: CustomText(
                                  'Find More to Download',
                                  color: kColorTertiary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MovieContainer extends StatelessWidget {
  const _MovieContainer({key, this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      width: MediaQuery.of(context).size.width * 0.33,
      height: MediaQuery.of(context).size.width * 0.33 * 1.414,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: Wrap(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 3),
                  decoration: BoxDecoration(
                    color: kColorPrimary,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                    ),
                  ),
                  child: Column(
                    children: [
                      CustomText(
                        'TOP',
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                        color: kColorTertiary,
                      ),
                      CustomText(
                        '10',
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: kColorTertiary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            child: Image.asset(
              'assets/icon/icon_netflix.png',
              width: 38,
            ),
          ),
        ],
      ),
    );
  }
}
