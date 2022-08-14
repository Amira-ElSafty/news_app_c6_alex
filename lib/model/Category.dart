import 'package:flutter/material.dart';

class Category{
  String id ;
  String imagePath ;
  int  backgroundColor ;
  String name ;

  Category({required this.id , required this.name , required this.backgroundColor , required this.imagePath});
/*
business entertainment general health science sports technology
 */
static List<Category> getCategory(){
  return [
    Category(id: 'sports', name: 'Sports', backgroundColor: 0xFFC91C22, imagePath: 'assets/images/sports.png'),
    Category(id: 'business', name: 'Business', backgroundColor: 0xFFCF7E48, imagePath: 'assets/images/bussines.png'),
    Category(id: 'entertainment', name: 'Entertainment', backgroundColor:0xFF4882CF , imagePath: 'assets/images/entertainment.png'),
    Category(id: 'health', name: 'Health', backgroundColor: 0xFFED1E79, imagePath: 'assets/images/health.png'),
    Category(id: 'technology', name: 'Technology', backgroundColor: 0xFF003E90, imagePath: 'assets/images/technology.png'),
    Category(id: 'science', name: 'Science', backgroundColor: 0xFFF2D352, imagePath: 'assets/images/science.png'),
    Category(id: 'general', name: 'General', backgroundColor: 0xFF4882CF, imagePath: 'assets/images/general.png'),

  ];
  
}
}