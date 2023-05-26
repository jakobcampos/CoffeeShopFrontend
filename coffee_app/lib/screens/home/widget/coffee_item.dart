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
          Container(
              padding: EdgeInsets.all(5),
              width: 110,
              height: 110,
              child: Image.asset(coffee.imgUrl, fit: BoxFit.fitHeight)),
          Expanded(
              child: Container(
            padding: EdgeInsets.only(
              top: 20,
              bottom: 10,
              right: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      coffee.name,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          height: 1.5),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined, size: 15)
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      '\$',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${coffee.price}',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}