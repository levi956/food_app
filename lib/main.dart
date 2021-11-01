import 'package:flutter/material.dart';
import 'package:travel_project/screens/body_screen.dart';
import 'package:travel_project/screens/login_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_project/screens/restaurant_category_screen.dart';

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
          title: 'The demo food ordering app',
          initialRoute: '/',
          routes: {
            '/': (context) => LoginScreen(),
            '/body_screen': (context) => BodyScreen(),
            '/restaurant': (context) => RestaurantCategoryScreen()
          },
        );
      },
    );
  }
}
