import 'package:flutter/material.dart';
import 'package:food_delivery/Constants/colors.dart';

import 'package:food_delivery/Models/food.dart';

class FoodImg extends StatelessWidget {
  const FoodImg(this._food, {Key? key}) : super(key: key);

  final Food _food;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    color: kBackgroundColor,
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    offset: const Offset(-1, 7),
                    blurRadius: 7,
                  ),
                ],
              ),
              child: Image.asset(
                _food.imgURL,
                fit: BoxFit.fill,
                width: 200,
                height: 200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
