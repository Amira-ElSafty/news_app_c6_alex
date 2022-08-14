import 'package:flutter/material.dart';

import '../my_theme.dart';

class HomeDrawer extends StatelessWidget {
  static const int CATEGORIES = 1 ;
  static const int SETTINGS = 2 ;
  Function onSideItemMenu ;
  HomeDrawer({required this.onSideItemMenu});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: MyThemeData.primaryColor,
            padding: EdgeInsets.symmetric(vertical: 64),
            width: double.infinity,
            child: Center(
              child: Text(
                'News App',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: MyThemeData.whiteColor),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                onSideItemMenu(HomeDrawer.CATEGORIES);
              },
              child: Row(
                children: [
                  Icon(Icons.list),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: MyThemeData.blackColor),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                onSideItemMenu(HomeDrawer.SETTINGS);
              },
              child: Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: MyThemeData.blackColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
