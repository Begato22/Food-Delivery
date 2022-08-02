import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/Constants/colors.dart';
import 'package:food_delivery/Models/food.dart';
import 'package:food_delivery/Screens/detail/Widgets/food_img.dart';
import 'package:food_delivery/Widgets/custom_app_bar.dart';
import 'package:food_delivery/shared/bloc.dart';
import 'package:food_delivery/shared/states.dart';

import 'Widgets/food_details.dart';

class Details extends StatelessWidget {
  const Details({Key? key, required this.food}) : super(key: key);
  final Food food;
  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);
    return BlocConsumer<AppCubit, AppStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, AppStates state) {
        return Scaffold(
          backgroundColor: kPrimaryColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                CustomAppBar(
                  leftIcon: Icons.arrow_back_ios_new_outlined,
                  rightIcon: Icons.favorite_border_outlined,
                  leftCallBack: () => Navigator.of(context).pop(),
                ),
                FoodImg(food),
                FoodDetails(food),
              ],
            ),
          ),
          floatingActionButton: SizedBox(
            height: 50,
            width: 100,
            child: RawMaterialButton(
              fillColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: null,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(Icons.shopping_bag_outlined),
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: kBackgroundColor,
                      child: Text(
                        "${cubit.foodQuantity}",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
