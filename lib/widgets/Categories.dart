import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_project/widgets/custom_indicator.dart';

class Categories extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: EdgeInsets.only(left: 14.4, top: 28.8),
      child: DefaultTabController(
        length: 4,
        child: TabBar(
          labelPadding: EdgeInsets.only(left: 14.4, right: 14.4),
          indicatorPadding: EdgeInsets.only(left: 14.4, right: 14.4),
          isScrollable: true,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black,
          labelStyle:
              GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w700),
          indicator: RoundedRectangleTabIndicator(
              color: Color(0xFF000000), weight: 2.4, width: 14.4),
          tabs: [
            Tab(
              child: Container(
                child: Text('Restaurants'),
              ),
            ),
            Tab(
              child: Container(
                child: Text('Party'),
              ),
            ),
            Tab(
              child: Container(
                child: Text('Treats'),
              ),
            ),
            Tab(
              child: Container(
                child: Text('Desserts'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
