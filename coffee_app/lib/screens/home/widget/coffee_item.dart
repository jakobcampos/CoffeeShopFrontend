import 'package:coffee_app/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeItem extends StatelessWidget {
  final Coffee coffee;
  const CoffeeItem(this.coffee, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Image.asset(
              coffee.imgUrl,
              fit: BoxFit.fitHeight,
              width: 70,
              height: 70,
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  coffee.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.favorite_outline, size: 20),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.add, size: 20),
          ),
        ],
      ),
    );
  }
}
