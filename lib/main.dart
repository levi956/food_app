import 'package:flutter/material.dart';
import 'package:travel_project/screens/login_page.dart';
import 'package:sizer/sizer.dart';
//import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: ThemeData(primaryColor: Colors.blue[600]),
          debugShowCheckedModeBanner: false,
          title: 'Travel Project 1',
          home: OpeningPage(),
        );
      },
    );
  }
}

class OpeningPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: login_page(),
      ),
    );
  }
}
