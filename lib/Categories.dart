import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<Categories> {
  // by default first item will be selected
  int selectedIndex = 0;
  List categories = [
    'Restaurant',
    'Party',
    'Treats',
    'Desserts',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            height: 7,
            margin: EdgeInsets.all(7),
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 20), //?
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: index == selectedIndex
                  ? Colors.green[600]
                  : Colors.grey.shade900,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.navigate_next_sharp,
                    size: 35,
                    color: index == selectedIndex
                        ? Colors.grey.shade900
                        : Colors.green[600]),
                Text(
                  categories[index],
                  style: TextStyle(
                    color: index == selectedIndex ? Colors.black : Colors.white,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
