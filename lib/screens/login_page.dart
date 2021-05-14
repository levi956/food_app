import 'package:flutter/material.dart';
import 'bodyScreen.dart';
import 'package:sizer/sizer.dart';

class login_page extends StatelessWidget {
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return body_screen();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
              child: Image(
            height: 30.h,
            image: AssetImage('images/gummy-coffee.png'),
          )),
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
            height: 30,
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
                onPressed: () => selectCategory(context),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                      color: Colors.white, fontSize: 20, fontFamily: 'Poppins'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
