import 'food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;
  Restaurant(this.name,
      this.waitTime,
      this.distance,
      this.label,
      this.logoUrl,
      this.desc,
      this.score,
      this.menu
      );
  static Restaurant generateRestaurant(){
    return Restaurant('Restaurant1',
        '20-30 min',
        '2km',
        'Restaurant1',
        'https://mealz.in/images/logo.png',
        'delicious',
        4.2,
        {
          'Recommend' : Food.generateRecommendFoods(),
          'Popular'   : Food.generatePopularFoods(),
          'Noodles'   : [],
          'Pizza'     : []

        }
    );
  }

}
