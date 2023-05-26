import 'package:coffee_app/models/shop.dart';
import 'package:coffee_app/screens/home/widget/coffee_item.dart';
import 'package:flutter/material.dart';

class CoffeeListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Shop shop;
  const CoffeeListView(this.selected, this.callback, this.pageController, this.shop,
      {super.key});

  @override
  Widget build(BuildContext context) {
    final category = shop.menu.keys.toList();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
          controller: pageController,
          onPageChanged: (index) => callback(index),
          children: category
              .map((e) => ListView.separated(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) =>
                      CoffeeItem(shop.menu[category[selected]]![index]),
                  separatorBuilder: (_, index) => const SizedBox(height: 15),
                  itemCount: shop.menu[category[selected]]!.length))
              .toList()),
    );
  }
}
