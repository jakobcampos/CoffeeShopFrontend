import 'package:coffee_app/constants/colors.dart';
import 'package:coffee_app/models/shop.dart';
import 'package:coffee_app/screens/home/widget/coffee_list.dart';
import 'package:coffee_app/screens/home/widget/coffee_list_view.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final pageController = PageController();
  final shop = Shop.generateShop();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(
            Icons.account_circle_outlined,
            Icons.search_outlined,
          ),
          CoffeeList(selected, (int index) {
            setState(() {
              selected = index;
            });
            pageController.jumpToPage(index);
          }, shop),
          Expanded(
            child: CoffeeListView(selected, (int index) {
              setState(() {
                selected = index;
              });
            }, pageController, shop),
          ),
          // DOTS SELECTORS
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            height: 60,
            child: Center(
              child: SmoothPageIndicator(
                controller: pageController,
                count: shop.menu.length,
                effect: CustomizableEffect(
                  dotDecoration: DotDecoration(
                      width: 8,
                      height: 8,
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8)),
                  activeDotDecoration: DotDecoration(
                      width: 10,
                      height: 10,
                      color: kBackground,
                      borderRadius: BorderRadius.circular(10),
                      dotBorder: const DotBorder(
                        color: kPrimaryColor,
                        padding: 2,
                        width: 2,
                      )),
                ),
                onDotClicked: (index) => pageController.jumpToPage(index),
              ),
            ),
          )
        ],
      ),
      // CART BUTTON
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        elevation: 2,
        child: const Icon(Icons.shopping_bag_outlined,
            color: Colors.black, size: 30),
      ),
    );
  }
}
