class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool highlight;
  Food(this.imgUrl,
  this.desc,
  this.name,
  this.waitTime,
  this.score,
  this.cal,
  this.price,
  this.quantity,
  this.ingredients,
  this.about,
      {this.highlight = false});
  static List<Food> generateRecommendFoods(){
    return [
      Food("https://mealz.in/images/Standard.png",
        "No.1 in sales",
        "Soba Soup",
        "30 min", 4.3, "400 kcal", 1500, 1,
        [
          {
            "Noodles" :"https://mealz.in/images/salad_.png",
          },
          {
            "Papad" : "https://mealz.in/images/Papad.png",
          },
          {
            "Raita" : "https://mealz.in/images/raita.png",
          },
          {
            "Curd" : "https://mealz.in/images/Curd.png",
          },
        ],
        "Simple food",
        highlight: true,
      )
    ];
  }
  static List<Food> generatePopularFoods(){
    return [
      Food("https://mealz.in/images/Standard.png",
        "No.1 in sales",
        "Soba Soup",
        "30 min", 4.3, "400 kcal", 1500, 1,
        [
          {
            "Noodles" :"https://mealz.in/images/salad_.png",
          },
          {
            "Papad" : "https://mealz.in/images/Papad.png",
          },
          {
            "Raita" : "https://mealz.in/images/raita.png",
          },
          {
            "Curd" : "https://mealz.in/images/Curd.png",
          },
        ],
        "Simple food",

      )
    ];
  }
}