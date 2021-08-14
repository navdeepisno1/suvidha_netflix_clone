import 'package:flutter/material.dart';
import 'package:suvidha_netflix_clone/screens/dashboard/dashboard.dart';
import 'package:suvidha_netflix_clone/screens/home/utils/app_top_navbar.dart';
import 'package:suvidha_netflix_clone/utils/constants/app_colors/app_colors.dart';
import 'package:suvidha_netflix_clone/utils/widgets/app_footer/app_footer.dart';
import 'package:suvidha_netflix_clone/utils/widgets/custom_text/custom_text.dart';
import 'package:suvidha_netflix_clone/utils/widgets/profile_container/profile_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 12,
              ),
              HomeScreenTopNavbar(),
              SizedBox(
                height: 54,
              ),
              Center(
                child: CustomText(
                  'Who\'s Watching?',
                  color: kColorTertiary,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Expanded(
                child: GridView.count(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  shrinkWrap: true,
                  children: List.generate(
                    15,
                    (index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DashboardScreen(tagId: index),
                          ),
                        );
                      },
                      child: Container(
                        child: Column(
                          children: [
                            ProfileContainer(
                              tagId: index,
                              size: MediaQuery.of(context).size.width * 0.25,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            CustomText(
                              'Hello',
                              fontSize: 20,
                              color: kColorTertiary,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              AppFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
