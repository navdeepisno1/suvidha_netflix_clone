import 'package:flutter/material.dart';
import 'package:suvidha_netflix_clone/screens/coming_soon/utils/widgets/top_appbar/app_top_navbar.dart';
import 'package:suvidha_netflix_clone/utils/widgets/app_bottom_navbar/app_bottom_navbar.dart';

class ComingSoonScreen extends StatefulWidget {
  const ComingSoonScreen({key}) : super(key: key);

  @override
  _ComingSoonScreenState createState() => _ComingSoonScreenState();
}

class _ComingSoonScreenState extends State<ComingSoonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ComingSoonAppBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
