// ignore: camel_case_types
class categoryModel {
  final String name;
  final String image;

  categoryModel(this.name, this.image);
}

List<categoryModel> categories = categoryData
    .map((item) => categoryModel(item['name'], item['image']))
    .toList();

const categoryData = [
  {
    "name": "Restaurant",
    "image": 'nifesi.jpg',
  },
  {
    "name": "Party",
    "image": 'icons8-wine-and-glass-50.png',
  },
  {
    "name": 'Treats',
    "image": 'icons8-ice-cream-cone-50.png',
  },
  {
    "name": 'Desserts',
    "image": 'icons8-doughnut-50.png',
  },
];
