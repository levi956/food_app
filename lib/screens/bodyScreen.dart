import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_project/widgets/Categories.dart';
import 'package:travel_project/widgets/Vendors.dart';
import 'package:flutter_svg/svg.dart';

// ignore: camel_case_types
class body_screen extends StatelessWidget {
  static String id = 'body_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyContent(),
    );
  }
}

class BodyContent extends StatefulWidget {
  @override
  _BodyContentState createState() => _BodyContentState();
}

class _BodyContentState extends State<BodyContent> {
  //final _pageController = PageController(viewportFraction: 0.877);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // back button widget
        SafeArea(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            //0x10000000
            child: Container(
              margin: EdgeInsets.only(left: 20, top: 13),
              height: 57.6,
              width: 57.6,
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.6),
                color: Colors.grey[400],
              ),
              child: SvgPicture.asset('assets/svg/icon_left_arrow.svg'),
            ),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // user image and greeting widget
            Container(
              margin: EdgeInsets.only(left: 20),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: Colors.grey[400], shape: BoxShape.circle),
              child: CircleAvatar(
                radius: 33,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/nifesi.jpg'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0, left: 10.0),
              child: Text(
                'Hi, Nifesi!',
                style: TextStyle(
                    color: Colors.black, fontFamily: 'Popppins', fontSize: 20),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 19.0,
        ),

        // text where do you want to eat widget
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            'What do\nyou want to eat?',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),

        // search field for stuff widget
        Container(
          height: 6.5.h,
          width: 80.h,
          margin: EdgeInsets.all(15),
          child: TextField(
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Poppins',
            ),
            decoration: InputDecoration(
                hoverColor: Colors.green[600],
                prefixIcon: Icon(Icons.search),
                labelText: 'Search for food',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                  15,
                ))),
          ),
        ),

        // categories text widget
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                'Categories',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),

        // categories indicator widget
        Categories(),

        SizedBox(
          height: 10,
        ),

        // popular vendors text widget
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            'Popular Vendors',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.w400),
          ),
        ),

        // vendors pageview widget
        Vendors()
      ],
    ));
  }
}
