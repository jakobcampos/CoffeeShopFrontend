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
      Coffee('assets/images/coffee-cup.png', 'Cappuccino', '150 kcal', 4.5, 1, [
        {'Milk': 'assets/images/milk.png'},
        {'Beans': 'assets/images/coffee-beans.png'},
      ]),
      Coffee(
          'assets/images/coffee-cup.png', 'Mocha Latte', '280 kcal', 5.0, 1, [
        {'Milk': 'assets/images/milk.png'},
        {'Chocolate': 'assets/images/chocolate.png'},
        {'Beans': 'assets/images/coffee-beans.png'},
      ]),
      Coffee('assets/images/coffee-cup.png', 'Caramel Frappacino', '280 kcal',
          8.0, 1, [
        {'Milk': 'assets/images/milk.png'},
        {'Chocolate': 'assets/images/chocolate.png'},
        {'Beans': 'assets/images/coffee-beans.png'},
      ]),
      Coffee('assets/images/coffee-cup.png', 'Iced White Mocha', '280 kcal',
          6.35, 1, [
        {'Milk': 'assets/images/milk.png'},
        {'Chocolate': 'assets/images/chocolate.png'},
        {'Beans': 'assets/images/coffee-beans.png'},
      ]),
      Coffee(
          'assets/images/coffee-cup.png', 'Matcha Latte', '280 kcal', 4.5, 1, [
        {'Milk': 'assets/images/milk.png'},
        {'Chocolate': 'assets/images/chocolate.png'},
        {'Beans': 'assets/images/coffee-beans.png'},
      ]),
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
      Coffee('assets/images/coffee-cup.png', 'Espresso', '75 kcal', 3.0, 1, [
        {'Beans': 'assets/images/coffee-beans.png'},
      ]),
      Coffee('assets/images/coffee-cup.png', 'Macchiato', '100 kcal', 4.0, 1, [
        {'Milk': 'assets/images/milk.png'},
        {'Beans': 'assets/images/coffee-beans.png'},
      ]),
    ];
  }

  static List<Coffee> generateColdCoffees() {
    return [
      Coffee(
          'assets/images/iced-coffee.png',
          'Iced Latte',
          '175 kcal',
          5.5,
          1,
          [
            {'Milk': 'assets/images/milk.png'},
            {'Beans': 'assets/images/coffee-beans.png'},
            {'Ice': 'assets/images/ice.png'},
          ],
          hightLight: true),
      Coffee('assets/images/iced-coffee.png', 'Iced Americano', '15 kcal', 3.0,
          1, [
        {'Water': 'assets/images/water.png'},
        {'Beans': 'assets/images/coffee-beans.png'},
        {'Ice': 'assets/images/ice.png'},
      ]),
      Coffee(
          'assets/images/iced-coffee.png',
          'Iced Mocha Frapaccino Macha Latte Machiato Frap Biscuit Sauce',
          '310 kcal',
          6.0,
          1, [
        {'Milk': 'assets/images/milk.png'},
        {'Chocolate': 'assets/images/chocolate.png'},
        {'Beans': 'assets/images/coffee-beans.png'},
        {'Ice': 'assets/images/ice.png'},
      ]),
    ];
  }
}
