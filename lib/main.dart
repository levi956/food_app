import 'package:flutter/material.dart';
import 'package:travel_project/screens/bodyScreen.dart';
import 'package:travel_project/screens/login_page.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_project/screens/restaurant_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static String id = 'home';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: ThemeData(primaryColor: Colors.white),
          debugShowCheckedModeBanner: false,
          title: 'Travel Project 1',
          initialRoute: '/',
          routes: {
            '/': (context) => login_page(),
            '/body_screen': (context) => body_screen(),
            '/restaurant': (context) => RestaurantCategoryScreen()
          },
        );
      },
    );
  }
}
