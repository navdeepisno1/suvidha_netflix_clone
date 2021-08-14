import 'package:flutter/material.dart';
import 'package:suvidha_netflix_clone/screens/dashboard/utils/widgets/show_container/ShowContainer.dart';
import 'package:suvidha_netflix_clone/screens/dashboard/utils/widgets/top_appbar/top_appbar.dart';
import 'package:suvidha_netflix_clone/screens/dashboard/utils/widgets/top_ten_container/TopTenContainer.dart';
import 'package:suvidha_netflix_clone/utils/constants/app_colors/app_colors.dart';
import 'package:suvidha_netflix_clone/utils/widgets/app_bottom_navbar/app_bottom_navbar.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({key, this.tagId}) : super(key: key);

  final int tagId;

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).devicePixelRatio);
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        ShowContainer(),
                        SizedBox(
                          height: 24,
                        ),
                        TopTenContainer(),
                        SizedBox(
                          height: 24,
                        ),
                      ],
                    ),
                    TopAppBar(),
                    Positioned(
                      bottom: 24,
                      right: 24,
                      child: Container(
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.shuffle,
                          size: 48,
                        ),
                        decoration: BoxDecoration(
                          color: kColorTertiary,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AppBottomNavbar()
          ],
        ),
      ),
    );
  }
}
