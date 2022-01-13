import 'package:flutter/material.dart';
import 'package:flutter_tmp/constants/colors.dart';
import 'package:flutter_tmp/models/restaurant.dart';

class RestaurantInfo extends StatelessWidget {
  // const RestaurantInfo({Key? key}) : super(key: key);
  final restaurant = Restaurant.generateRestaurant();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 40),
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
                    _buildText(restaurant.name),
                    SizedBox(height: 10),
                    Row(
                        children: [
                          _buildContainer(restaurant.waitTime),
                          SizedBox(width: 10),
                          _buildContainer(restaurant.distance),
                          SizedBox(width: 10),
                          _buildContainer(restaurant.label),
                                  ],)
                      ],),
                ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(restaurant.logoUrl,
                    height: 40,
                    width: 40,
                    color: Colors.blue,),
                ),
                      ],),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildContainer("${restaurant.desc}"),
                Row(
                  children: [
                    Icon(Icons.star_outline,
                    color: kprimecolor,),
                    SizedBox(width: 10),
                    _buildContainer("${restaurant.score}"),
                    SizedBox(width: 10),
                  ],
                )
              ],
            )
                  ],)
      // ],
                  );
    // );
      }

  Widget _buildContainer(z) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.4),
        borderRadius: BorderRadius.circular(5),
      ),
            child: Text(z,
                    style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
        ),
      ),
    );

  }

  Widget _buildText(y) {
    return Text(y,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

