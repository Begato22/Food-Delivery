import 'package:flutter/material.dart';
import 'package:food_delivery/Constants/colors.dart';
import 'package:food_delivery/Models/restaurant.dart';
import 'package:food_delivery/Widgets/custom_app_bar.dart';
import 'package:food_delivery/Widgets/food_list.dart';
import 'package:food_delivery/Widgets/food_list_view.dart';
import 'package:food_delivery/Widgets/restaurant_info.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selected = 0;
  final Restaurant restaurant = Restaurant.generateNewRestaurant();
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CustomAppBar(
            leftIcon: Icons.arrow_back_ios,
            rightIcon: Icons.search,
            leftCallBack: null,
          ),
          const RestaurantInfo(),
          FoodList(
            selected: _selected,
            callBack: (int index) {
              setState(() {
                _selected = index;
              });
              pageController.jumpToPage(index);
            },
            restaurant: restaurant,
          ),
          Expanded(
            child: FoodListView(
              selected: _selected,
              callBack: (index) {
                setState(() {
                  _selected = index;
                });
              },
              pageController: pageController,
              restaurant: restaurant,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 82,
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SmoothPageIndicator(
                onDotClicked: (index) {
                  pageController.jumpToPage(index);
                },
                controller: pageController,
                count: restaurant.menu.length,
                effect: CustomizableEffect(
                  dotDecoration: DotDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.5),
                    height: 10,
                    width: 10,
                  ),
                  activeDotDecoration: DotDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kBackgroundColor,
                    height: 15,
                    width: 15,
                    dotBorder: const DotBorder(
                      color: kPrimaryColor,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        child: const Icon(Icons.shopping_basket),
      ),
    );
  }
}
