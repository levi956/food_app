import 'package:flutter/material.dart';

class VendorModel {
  String name;
  String image;

  VendorModel(this.name, this.image);
}

List<VendorModel> vendors =
    VendorData.map((item) => VendorModel(item['name'], item['image'])).toList();

const VendorData = [
  {
    "name": "Chicken Republic",
    "image":
        "https://www.chicken-republic.com/wp-content/uploads/2020/05/ChickenRepublic_StoreFront-3.jpg",
  },
  {
    "name": "Domino\'s Pizza",
    "image":
        'https://media.timbu.com/poi/2167/domt-2167-57d9e26c4232d.jpg?w=300',
  },
  {
    "name": 'Kentucy Fried Chicken',
    "image": 'https://www.tori.ng/userfiles/image/2017/feb/20/KFC.JPG',
  },
  {
    "name": 'Krispy Kreme',
    "image":
        'https://i2.wp.com/nairametrics.com/wp-content/uploads/2018/08/Krispy-Kreme-ICM.jpg?fit=1600%2C1000&ssl=1',
  },
];
