class Food {
  String imgURL;
  String name;
  List<Map<String, String>> ingredients;
  String waitingTime;
  num score;
  String kcal;
  num price;
  num quantity;
  String about;
  bool highLight;
  String desc;

  Food(this.imgURL, this.kcal, this.name, this.price, this.quantity, this.score,
      this.waitingTime, this.ingredients, this.about, this.desc,
      {this.highLight = false});

  static List<Food> geberateRecommendedFood() {
    return [
      Food(
        'assets/images/dish1.png',
        "859 kcal",
        "Orange Sandwiches",
        12,
        1,
        9.3,
        "50 min",
        [
          {'Noodel': 'assets/images/ingre1.png'},
          {'Scrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'},
        ],
        "No 1 in Sales",
        "lorem text it was here from one second",
        highLight: true,
      ),
      Food(
        'assets/images/dish2.png',
        "859 kcal",
        "Ratatauille Pasta",
        18,
        1,
        3.5,
        "30 min",
        [
          {'Scallion': 'assets/images/ingre4.png'},
          {'Noodel': 'assets/images/ingre1.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scrimp': 'assets/images/ingre2.png'},
        ],
        "Low Selected",
        "lorem text it was here from one second",
      ),
      Food(
        'assets/images/dish3.png',
        "859 kcal",
        "Sai Ua Samun Phrai",
        25,
        1,
        5.9,
        "33 min",
        [
          {'Scallion': 'assets/images/ingre4.png'},
          {'Noodel': 'assets/images/ingre1.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scrimp': 'assets/images/ingre2.png'},
        ],
        "Highly Recommended",
        "lorem text it was here from one second",
      )
    ];
  }

  static List<Food> geberatePopularFood() {
    return [
      Food(
        'assets/images/dish1.png',
        "859 kcal",
        "Tomato Checken",
        12,
        1,
        9.3,
        "50 min",
        [
          {'Noodel': 'assets/images/ingre1.png'},
          {'Scrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'},
        ],
        "Most Popular",
        "lorem text it was here from one second",
        highLight: false,
      ),
      Food(
        'assets/images/dish1.png',
        "859 kcal",
        "Orange Sandwiches",
        12,
        1,
        9.3,
        "50 min",
        [
          {'Noodel': 'assets/images/ingre1.png'},
          {'Scrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'},
        ],
        "No 1 in Sales",
        "lorem text it was here from one second",
        highLight: true,
      ),
    ];
  }
}
