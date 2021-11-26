import 'package:flutter/material.dart';
//import 'package:travel_project/models/restaurantsModel.dart';

class RestaurantTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
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
    );
  }
}
