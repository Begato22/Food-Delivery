import 'package:flutter/material.dart';
import 'package:food_delivery/Constants/colors.dart';
import 'package:food_delivery/Models/food.dart';
import 'package:food_delivery/Screens/detail/Widgets/food_ingredients.dart';

import 'food_quantatiy.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails(this._food, {Key? key}) : super(key: key);

  final Food _food;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      width: double.infinity,
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 65),
            child: Text(
              _food.desc,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIconText(
                  Icons.timer_outlined, Colors.blue, _food.waitingTime),
              _buildIconText(
                  Icons.star_border, kPrimaryColor, "${_food.score}"),
              _buildIconText(
                  Icons.local_fire_department_outlined, Colors.red, _food.kcal),
            ],
          ),
          const SizedBox(height: 30),
          FoodQuantatiy(_food),
          const SizedBox(height: 30),
          const Align(
            alignment: Alignment(-0.8, 0),
            child: Text(
              "Ingredients",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
          ),
          const SizedBox(height: 15),
          FoodIngredients(_food),
          Container(
            padding: const EdgeInsets.only(left: 30.0, bottom: 20),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      "About",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "this lorem Text this lorem Text this lorem Text this lorem Text this lorem Text this lorem Text.",
                  style:
                      TextStyle(letterSpacing: 1.2, height: 1.2, fontSize: 16),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }

  Widget _buildIconText(IconData iconData, Color color, String desc) {
    return Row(
      children: [
        Icon(iconData, color: color),
        Text(
          desc,
          style: const TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
