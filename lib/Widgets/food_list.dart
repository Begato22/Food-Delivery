import 'package:flutter/material.dart';
import 'package:food_delivery/Constants/colors.dart';
import 'package:food_delivery/Models/restaurant.dart';

class FoodList extends StatelessWidget {
  final int selected;
  final Function callBack;
  final Restaurant restaurant;

  const FoodList(
      {Key? key,
      required this.selected,
      required this.callBack,
      required this.restaurant})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List category = restaurant.menu.keys.toList();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 25),
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => callBack(index),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  color: index == selected ? kPrimaryColor : Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(category[index],
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              ),
            );
          },
          separatorBuilder: (_, index) {
            return const SizedBox(width: 15);
          },
          itemCount: category.length),
    );
  }
}
