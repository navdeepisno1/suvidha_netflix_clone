import 'package:flutter/material.dart';
import 'package:suvidha_netflix_clone/screens/coming_soon/coming_soon.dart';
import 'package:suvidha_netflix_clone/screens/dashboard/dashboard.dart';
import 'package:suvidha_netflix_clone/screens/downloads/downloads.dart';
import 'package:suvidha_netflix_clone/utils/constants/app_colors/app_colors.dart';
import 'package:suvidha_netflix_clone/utils/widgets/custom_text/custom_text.dart';

class AppBottomNavbar extends StatefulWidget {
  const AppBottomNavbar({key}) : super(key: key);

  @override
  _AppBottomNavbarState createState() => _AppBottomNavbarState();
}

class _AppBottomNavbarState extends State<AppBottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _AppBottomNavbarItem(
            icon: Icons.home_rounded,
            title: 'Home',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DashboardScreen(),
                ),
              );
            },
          ),
          _AppBottomNavbarItem(
            icon: Icons.shuffle_outlined,
            title: 'Play Something',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DashboardScreen(),
                ),
              );
            },
          ),
          _AppBottomNavbarItem(
            icon: Icons.video_collection_rounded,
            title: 'Coming Soon',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ComingSoonScreen(),
                ),
              );
            },
          ),
          _AppBottomNavbarItem(
            icon: Icons.arrow_circle_down,
            title: 'Downloads',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DownloadsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _AppBottomNavbarItem extends StatelessWidget {
  const _AppBottomNavbarItem({key, this.icon, this.title, this.onTap})
      : super(key: key);
  final IconData icon;
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Column(
          children: [
            Icon(
              icon,
              size: MediaQuery.of(context).size.width * 0.06,
              color: kColorTertiary,
            ),
            SizedBox(
              height: 6,
            ),
            CustomText(
              title,
              fontSize: MediaQuery.of(context).size.width * 0.022,
              color: kColorTertiary,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
