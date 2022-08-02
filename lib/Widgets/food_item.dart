import 'package:flutter/material.dart';

import 'package:food_delivery/Constants/colors.dart';
import 'package:food_delivery/Models/food.dart';

class FoodItem extends StatelessWidget {
  final Food food;

  const FoodItem({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(7),
            child: Image.asset(
              food.imgURL,
              height: 90,
              width: 90,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 5, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        food.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Icon(Icons.navigate_next)
                    ],
                  ),
                  Text(
                    food.about,
                    style: TextStyle(
                        color: food.highLight ? kPrimaryColor : Colors.grey),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
