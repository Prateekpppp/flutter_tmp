import 'package:flutter/material.dart';
import 'package:flutter_tmp/constants/colors.dart';
import 'package:flutter_tmp/models/restaurant.dart';
class FoodList extends StatelessWidget {
  // const FoodList({Key? key}) : super(key: key);
  final int selected;
  final Function callback;
  final Restaurant restaurant;
  FoodList(this.selected, this.callback, this.restaurant);
  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 30),
      child:ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 25),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
            onTap: () => callback(index),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: selected==index ? kprimecolor:Colors.white,
              ),
            ),
          ),
        separatorBuilder: (),
      ),
    );
  }
}
