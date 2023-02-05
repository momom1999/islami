import 'package:flutter/material.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/sura_details/sura_details_screen.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      routes: {
        HomeScreen.routename: (_) => HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
      },
      initialRoute: HomeScreen.routename,
    );
  }
}
