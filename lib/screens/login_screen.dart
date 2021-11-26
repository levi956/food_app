import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// ignore: camel_case_types
class LoginScreen extends StatelessWidget {
  static String id = 'login';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Image(
                  height: 30.h,
                  image: AssetImage('assets/images/gummy-coffee.png'),
                ),
              ),
              Center(
                child: Text(
                  'Explore New Places',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                //height: 9.8.h,
                margin: EdgeInsets.all(13),
                child: Center(
                  child: Text(
                    'Our goal is to help you find attractions,\n great food or adventures in a new city. Get started to discover great experience and taste around you.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Poppins',
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                //height: 9.h,
                alignment: Alignment.center,
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(17),
                  color: Colors.green[600],
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    minWidth: 250.0,
                    height: 60,
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    onPressed: () =>
                        Navigator.pushNamed(context, '/body_screen'),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
