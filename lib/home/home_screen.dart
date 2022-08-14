import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_news_c6_alex/category/category_details.dart';
import 'package:flutter_app_news_c6_alex/category/category_fragment.dart';
import 'package:flutter_app_news_c6_alex/home/home_drawer.dart';
import 'package:flutter_app_news_c6_alex/model/Category.dart';
import 'package:flutter_app_news_c6_alex/settings/setting.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'))),
      child: Scaffold(
        appBar: AppBar(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text('Route News App'),
          centerTitle: true,
        ),
        drawer: HomeDrawer(onSideItemMenu: onSideItemMenu),
        body: selectedItemDrawer == HomeDrawer.SETTINGS ?
            SettingWidget()
            :
        selectedCategory == null ?
        CategoryFragment
          (onCategoryItemClicked: onCategoryItemClicked):
            CategoryDetails(category: selectedCategory!)
        ,
      ),
    );
  }

  Category? selectedCategory = null ;
  void onCategoryItemClicked(Category category){
    selectedCategory = category ;
    setState(() {

    });
  }

  // category , settings
  var selectedItemDrawer = HomeDrawer.CATEGORIES ;
  void onSideItemMenu(int selectedItem){
    // selected item => user (category / setting)
    selectedItemDrawer = selectedItem ;
    Navigator.pop(context);
    selectedCategory = null ;
    setState(() {

    });
  }
}
