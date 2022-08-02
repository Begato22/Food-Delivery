import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final IconData leftIcon;
  final IconData rightIcon;
  final Function? leftCallBack;
  const CustomAppBar(
      {Key? key,
      required this.leftIcon,
      required this.rightIcon,
      required this.leftCallBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildIcon(leftIcon),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Icon(rightIcon),
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData iconData) {
    return GestureDetector(
      onTap: leftCallBack != null ? () => leftCallBack!() : null,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Icon(iconData),
      ),
    );
  }
}
