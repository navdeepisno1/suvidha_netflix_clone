import 'package:flutter/material.dart';
import 'package:suvidha_netflix_clone/screens/home/home_screen.dart';
import 'package:suvidha_netflix_clone/utils/constants/app_colors/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: kColorPrimary,
        scaffoldBackgroundColor: kColorSecondary,
      ),
      home: HomeScreen(),
    );
  }
}
