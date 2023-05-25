class Coffee {
  String imgUrl;
  String name;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  bool hightLight;
  Coffee(this.imgUrl, this.name, this.cal, this.price, this.quantity,
      this.ingredients,
      {this.hightLight = false});

  static List<Coffee> generateRecommendCoffees() {
    return [
      Coffee(
          'assets/images/coffee-cup.png',
          'Oat Latte',
          '325 kcal',
          6.5,
          1,
          [
            {'Oatmilk': 'assets/images/oats.png'},
            {'Beans': 'assets/images/coffee-beans.png'},
          ],
          hightLight: true),
    ];
  }

  static List<Coffee> generatePopularCoffees() {
    return [
      Coffee(
          'assets/images/coffee-cup.png',
          'Latte',
          '325 kcal',
          6.5,
          1,
          [
            {'Beans': 'assets/images/coffee-beans.png'},
          ],
          hightLight: true),
    ];
  }
}
