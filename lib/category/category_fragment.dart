import 'package:flutter/material.dart';

import '../model/Category.dart';
import '../my_theme.dart';
import 'category_item.dart';

class CategoryFragment extends StatelessWidget {
  List<Category> categoryList = Category.getCategory();
  Function onCategoryItemClicked ;
  CategoryFragment({required this.onCategoryItemClicked});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Pick your Category\nOf Interest',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: MyThemeData.blackColor
            ),
          ),
          SizedBox(height: 12,),
          Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12
                ), itemBuilder: (context , index){
                return InkWell(
                    onTap: (){
                      // call back function
                      onCategoryItemClicked(categoryList[index]);
                    },
                    child: CategoryItem(category: categoryList[index], index: index));
              },
                itemCount: categoryList.length,
              )
          )
        ],
      ),
    );
  }
}
