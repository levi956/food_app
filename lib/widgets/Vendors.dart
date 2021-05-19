import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_project/models/vendomModels.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Vendors extends StatefulWidget {
  @override
  _VendorsState createState() => _VendorsState();
}

class _VendorsState extends State<Vendors> {
  //page controller
  final _pageController = PageController(viewportFraction: 0.877);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 30.h,
          margin: EdgeInsets.only(top: 15),
          child: PageView(
            physics: BouncingScrollPhysics(),
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            children: List.generate(
                vendors.length,
                (int index) => Container(
                      margin: EdgeInsets.only(
                        right: 25,
                      ),
                      width: 333.6,
                      height: 218.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(
                                vendors[index].image),
                          )),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                              bottom: 19.2,
                              left: 19.2,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4.8),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 19.2,
                                    sigmaY: 19.2,
                                  ),
                                  child: Container(
                                    height: 36,
                                    padding: EdgeInsets.only(
                                        left: 16.72, right: 14.4),
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 9.52,
                                        ),
                                        Text(
                                          vendors[index].name,
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                              fontSize: 16),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    )),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 28.8),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: vendors.length,
              effect: ExpandingDotsEffect(
                  activeDotColor: Color(0xFFF8a8a8a),
                  dotColor: Color(0xFFababab),
                  dotHeight: 4.8,
                  dotWidth: 6,
                  spacing: 4.8),
            ),
          ),
        ),
      ],
    );
  }
}
