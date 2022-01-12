import 'package:flutter/material.dart';
import 'package:flutter_tmp/constants/colors.dart';
import 'package:flutter_tmp/widgets/custombar.dart';
import 'package:flutter_tmp/widgets/restaurant_info.dart';
class homepage extends StatefulWidget {

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppbar(
            Icons.arrow_back_ios_new_outlined,
            Icons.search_outlined,
          ),
          RestaurantInfo(),
        ],
      ),
      // body: Center(
      //   child: Text('Home Page'),
      // ),
    );
  }
}

