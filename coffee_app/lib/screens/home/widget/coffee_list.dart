import 'package:coffee_app/constants/colors.dart';
import 'package:coffee_app/models/shop.dart';
import 'package:flutter/material.dart';

class CoffeeList extends StatelessWidget {
  final int selected;
  final Function callback;
  final Shop shop;
  const CoffeeList(this.selected, this.callback, this.shop, {super.key});

  @override
  Widget build(BuildContext context) {
    final category = shop.menu.keys.toList();
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () => callback(index),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: selected == index ? kPrimaryColor : Colors.white),
                  child: Text(
                    category[index],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(width: 20),
          itemCount: category.length),
    );
  }
}
