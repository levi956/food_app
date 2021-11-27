import 'package:flutter/material.dart';
import 'package:food_app/screens/body_screen.dart';
import 'package:food_app/screens/sign_in_screen.dart';
import 'package:food_app/screens/startup_screen.dart';
import 'package:sizer/sizer.dart';

//TO DO:
// convert images to assets or catch error exception
// debug sign in screen completely ( layout)
// create kyc page (sign up page) -- write down kyc info later on
//

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          //theme: ThemeData(primaryColor: Colors.white),
          debugShowCheckedModeBanner: false,
          title: 'The demo food ordering app',
          initialRoute: '/',
          routes: {
            '/': (context) => StartupScreen(),
            '/body_screen': (context) => BodyScreen(),
            '/sign_in_screen': (context) => SignIn(),
          },
        );
      },
    );
  }
}
