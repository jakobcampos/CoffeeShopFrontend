import 'package:coffee_app/models/coffee.dart';

class Shop {
  Map<String, List<Coffee>> menu;
  Shop(this.menu);

  static Shop generateShop() {
    return Shop(
      {
        'Recommend': Coffee.generateRecommendCoffees(),
        'Popular': Coffee.generatePopularCoffees(),
        'Cold Coffees': [],
        'Hot Coffees': [],
      },
    );
  }
}
