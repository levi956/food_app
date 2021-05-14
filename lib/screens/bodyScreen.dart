import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_project/widgets/Categories.dart';
import 'package:travel_project/widgets/Vendors.dart';

// ignore: camel_case_types
class body_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Text(
          'Welcome',
          style: TextStyle(fontFamily: 'Poppins', color: Colors.white),
        ),
      ),
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
          SizedBox(
            height: 10.0,
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20),
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.green[600], shape: BoxShape.circle),
                child: CircleAvatar(
                  radius: 33,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('images/nifesi.jpg'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0, left: 10.0),
                child: Text(
                  'Hi, Nifesi!',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Popppins',
                      fontSize: 20),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 19.0,
          ),

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

          Categories(),
          SizedBox(
            height: 10,
          ),
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

          Vendors(), //Vendors widget
        ],
      ),
    );
  }
}
