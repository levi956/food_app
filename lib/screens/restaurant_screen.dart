import 'package:flutter/material.dart';
import 'package:travel_project/models/restaurantsModel.dart';
import 'package:flutter_svg/svg.dart';

// class RestaurantCategoryScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: ListView.builder(
//           itemCount: restaurants.length,
//           itemBuilder: (context, index) => ListTile(
//             leading: CircleAvatar(
//               backgroundImage: NetworkImage(restaurants[index].logo),
//             ),
//             title: Text(
//               restaurants[index].name,
//               style: TextStyle(fontFamily: 'Poppins'),
//             ),
//             subtitle: Text(
//               restaurants[index].description,
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class RestaurantCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // back button
            GestureDetector(
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
                )),

            //All vendors text widget
            Container(
              margin: EdgeInsets.only(top: 15, left: 15),
              child: Text(
                'All Vendors',
                style: TextStyle(
                    fontFamily: 'Poppins', fontSize: 27, color: Colors.black),
              ),
            ),
            ListTile(
              leading: Image(
                image: NetworkImage(
                    'https://www.chicken-republic.com/wp-content/uploads/2020/04/ChickenRepublic_Favicon.png'),
              ),
              title: Text(
                'Chicken Republic',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
            ),
            ListTile(
              leading: Image(
                image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Domino%27s_pizza_logo.svg/1200px-Domino%27s_pizza_logo.svg.png'),
              ),
              title: Text(
                'Domino\s Pizza',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
            ),
            ListTile(
              leading: Image(
                image: NetworkImage(
                    'https://www.ladysmithtourism.co.za/wp-content/uploads/2019/10/Spur.jpg'),
              ),
              title: Text(
                'Spurs',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
            ),
            ListTile(
              leading: Image(
                image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/sco/thumb/b/bf/KFC_logo.svg/1200px-KFC_logo.svg.png'),
              ),
              title: Text(
                'Kentucy Fried Chicken',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
            ),
            ListTile(
              leading: Image(
                image: NetworkImage(
                    'https://ih1.redbubble.net/image.1129696442.5971/clkf,bamboo,white,600x600-bg,f8f8f8.jpg'),
              ),
              title: Text(
                'Krispy Kreme',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
