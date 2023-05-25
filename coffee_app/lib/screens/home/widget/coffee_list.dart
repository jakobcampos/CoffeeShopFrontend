import 'package:coffee_app/constants/colors.dart';
import 'package:coffee_app/models/shop.dart';
import 'package:flutter/material.dart';

class CoffeeList extends StatelessWidget {
  final int selected;
  final Function callback;
  final Shop shop;
  CoffeeList(this.selected, this.callback, this.shop, {super.key});

  @override
  Widget build(BuildContext context) {
    final category = shop.menu.keys.toList();
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () => callback(index),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: selected == index ? kPrimaryColor : Colors.white),
                  child: Text(
                    category[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(width: 20),
          itemCount: category.length),
    );
  }
}
