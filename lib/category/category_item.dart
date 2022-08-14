import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_news_c6_alex/model/Category.dart';

import '../my_theme.dart';

class CategoryItem extends StatelessWidget {
  Category category;
  int index;
  CategoryItem({required this.category, required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(category.backgroundColor),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(12),
            topLeft: Radius.circular(12),
            bottomRight: Radius.circular((index % 2 == 0) ? 0 : 12),
            bottomLeft: Radius.circular((index % 2 == 0) ? 12 : 0)),
      ),
      child: Column(
        children: [
          Image.asset(category.imagePath,
            height: 100,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 15,),
          Text(
            category.name,
            style: TextStyle(
                color: MyThemeData.whiteColor,
                fontSize: 22,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
