import 'food.dart';

class Restaurant {
  String name;
  String waitingTime;
  String distance;
  String logoURL;
  String desc;
  num score;
  String label;
  Map<String, List<Food>> menu;

  Restaurant(
    this.name,
    this.waitingTime,
    this.desc,
    this.distance,
    this.label,
    this.logoURL,
    this.score,
    this.menu,
  );

  static Restaurant generateNewRestaurant() {
    return Restaurant(
      "Restaurant",
      "20 - 30 min",
      "Welcome to Description",
      "2.4 km",
      "Restaurant",
      'assets/images/res_logo.png',
      9.8,
      {
        'Recommended': Food.geberateRecommendedFood(),
        'Popular': Food.geberatePopularFood(),
        'Noodles': [],
        'Pizza': [],
      },
    );
  }
}
