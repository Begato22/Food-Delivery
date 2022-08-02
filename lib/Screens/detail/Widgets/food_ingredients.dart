import 'package:flutter/material.dart';
import 'package:food_delivery/Models/food.dart';

class FoodIngredients extends StatelessWidget {
  const FoodIngredients(this._food, {Key? key}) : super(key: key);

  final Food _food;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              width: 47,
              height: 47,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                shape: BoxShape.circle,
              ),
              child: Image.asset(_food.ingredients[index].values.first),
            ),
            const SizedBox(height: 5),
            Text(_food.ingredients[index].keys.first)
          ],
        ),
        separatorBuilder: (_, index) => const SizedBox(width: 15),
        itemCount: _food.ingredients.length,
      ),
    );
  }
}
