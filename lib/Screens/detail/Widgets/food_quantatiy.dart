import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/Constants/colors.dart';
import 'package:food_delivery/Models/food.dart';
import 'package:food_delivery/shared/bloc.dart';
import 'package:food_delivery/shared/states.dart';

class FoodQuantatiy extends StatelessWidget {
  const FoodQuantatiy(this._food, {Key? key}) : super(key: key);

  final Food _food;
  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) => SizedBox(
        width: double.maxFinite,
        height: 40,
        child: Stack(children: [
          Align(
            alignment: const Alignment(-0.3, 0),
            child: Container(
              height: double.maxFinite,
              width: 120,
              padding: const EdgeInsets.only(left: 7),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  const Text(
                    "\$",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${_food.price}",
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.3, 0),
            child: Container(
              height: double.maxFinite,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: kPrimaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => cubit.decrease(_food.quantity),
                    child: const Text(
                      "-",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: kBackgroundColor,
                    ),
                    child: Text(
                      cubit.foodQuantity.toString(),
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => cubit.increase(_food.quantity),
                    child: const Text(
                      "+",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
