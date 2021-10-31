class RestaurantModel {
  String name;
  String logo;
  String description;

  RestaurantModel(this.name, this.logo, this.description);
}

List<RestaurantModel> restaurants = RestaurantData.map((item) =>
    RestaurantModel(item['name'], item['logo'], item['description'])).toList();

const RestaurantData = [
  {
    'name': 'Chicken Republic',
    'logo':
        'https://www.chicken-republic.com/wp-content/uploads/2020/04/ChickenRepublic_Favicon.png',
    'description': 'Great Taste'
  },
  {
    'name': 'Domino\s Pizza',
    'logo':
        'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Domino%27s_pizza_logo.svg/1200px-Domino%27s_pizza_logo.svg.png',
    'description': 'Need a bite'
  },
  {
    'name': 'Spurs',
    'logo':
        'https://www.ladysmithtourism.co.za/wp-content/uploads/2019/10/Spur.jpg',
    'description': 'Traditinal Meals just for you'
  },
  {
    'name': 'Kentucy Fried Chicken',
    'logo':
        'https://upload.wikimedia.org/wikipedia/sco/thumb/b/bf/KFC_logo.svg/1200px-KFC_logo.svg.png',
    'description': 'So Crunchy Yum Yum'
  },
  {
    'name': 'Krispy Kream',
    'logo':
        'https://ih1.redbubble.net/image.1129696442.5971/clkf,bamboo,white,600x600-bg,f8f8f8.jpg',
    'description': 'Lovely Dougnuts'
  },
];
