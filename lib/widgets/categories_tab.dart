import 'package:flutter/material.dart';
import 'package:food_app/screens/restaurant_tab_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_app/widgets/custom_indicator.dart';

class CategoriesTab extends StatefulWidget {
  @override
  _CategoryTabListState createState() => _CategoryTabListState();
}

class _CategoryTabListState extends State<CategoriesTab>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Column(
      children: <Widget>[
        Container(
          height: 30,
          margin: EdgeInsets.only(left: 14.4, top: 15.8),
          child: TabBar(
            controller: _tabController,
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
                  child: Text('Desserts'),
                ),
              ),
              Tab(
                child: Container(
                  child: Text('Treats'),
                ),
              ),
              Tab(
                child: Container(
                  child: Text('Party'),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 300,
          child: TabBarView(
            controller: _tabController,
            children: [
              RestaurantTabView(),
              Text('hello'),
              Text('hello'),
              Text('hello'),
            ],
          ),
        )
      ],
    );
  }
}
