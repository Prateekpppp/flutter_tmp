import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RestaurantInfo extends StatelessWidget {
  // const RestaurantInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      color: Colors.white,),
      // child: Text('RestaurantInfo'),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(restaurant.name),
                  SizedBox(height: 10),
                  Row(children: [
                    Text(restaurant.waitTime),
                    Text(restaurant.distance),
                    Text(restaurant.label),

                  ],)
                ],
              )
            ],
          )
        ],
      ),
    );

  }
}
