import 'package:flutter/material.dart';
import 'package:travel_project/models/vendomModels.dart';
import 'package:sizer/sizer.dart';

class Vendors extends StatefulWidget {
  @override
  _VendorsState createState() => _VendorsState();
}

class _VendorsState extends State<Vendors> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      margin: EdgeInsets.only(top: 15, left: 15),
      child: PageView(
        physics: BouncingScrollPhysics(),
        //controller: _pagecontroller(),
        scrollDirection: Axis.horizontal,
        children: List.generate(
            vendors.length,
            (int index) => Container(
                  margin: EdgeInsets.only(right: 25),
                  width: 220,
                  height: 215,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(vendors[index].image),
                      )),
                )),
      ),
    );
  }
}
