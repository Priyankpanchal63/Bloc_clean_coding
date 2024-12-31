import 'package:bloc_clean_coding/confi/colors/colors.dart';
import 'package:flutter/material.dart';

class Roundbutton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final double height;

  Roundbutton(
      {super.key,
      this.height = 55,
      required this.title,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: MediaQuery.of(context).size.width * .8,
        decoration: BoxDecoration(
          color: AppColors.buttonColors,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
