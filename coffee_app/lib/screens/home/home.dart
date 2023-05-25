import 'package:coffee_app/constants/colors.dart';
import 'package:coffee_app/models/shop.dart';
import 'package:coffee_app/screens/home/widget/coffee_list.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final shop = Shop.generateShop();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            Icons.account_circle_outlined,
            Icons.search_outlined,
          ),
          CoffeeList(selected, (int index) {
            setState(() {
              selected = index;
            });
          }, shop)
        ],
      ),
    );
  }
}
