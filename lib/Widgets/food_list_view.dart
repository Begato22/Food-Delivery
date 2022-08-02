import 'package:flutter/material.dart';
import 'package:food_delivery/Models/restaurant.dart';
import 'package:food_delivery/Screens/detail/details.dart';

import 'food_item.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callBack;
  final PageController pageController;
  final Restaurant restaurant;

  const FoodListView(
      {Key? key,
      required this.selected,
      required this.callBack,
      required this.pageController,
      required this.restaurant})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List category = restaurant.menu.keys.toList();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callBack(index),
        children: category
            .map((e) => ListView.separated(
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Details(
                                  food: restaurant
                                      .menu[category[selected]]![index],
                                )));
                      },
                      child: FoodItem(
                        food: restaurant.menu[category[selected]]![index],
                      ),
                    ),
                separatorBuilder: (_, index) => const SizedBox(height: 15),
                itemCount: restaurant.menu[category[selected]]!.length))
            .toList(),
      ),
    );
  }
}
