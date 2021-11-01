import 'package:flutter/material.dart';
import 'package:food_app/screens/body_screen.dart';
import 'package:food_app/screens/login_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:food_app/screens/restaurant_category_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
