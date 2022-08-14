import 'package:flutter/material.dart';
import 'package:flutter_app_news_c6_alex/api_manager.dart';
import 'package:flutter_app_news_c6_alex/model/Category.dart';
import '../model/SourceResponse.dart';
import '../tabs/tab_container.dart';


class CategoryDetails extends StatelessWidget {
  static String routeName = 'category_details';
  Category category ;
  CategoryDetails({required this.category});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponse>(
        future:ApiManager.getSource(category.id) ,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Column(
              children: [
                Text('Something went wrong'),
                TextButton(onPressed: () {}, child: Text('Try again'))
              ],
            );
          }
          else if (snapshot.data?.status != 'ok') {
            // server has code and message
            return Column(
              children: [
                Text('${snapshot.error}'),
                TextButton(onPressed: () {}, child: Text('Try again'))
              ],
            );
          } else {
            var sourceList = snapshot.data?.sources ?? [];
            print(sourceList.length);
            return TabContainer(sources: sourceList);
          }
        }


      );

  }
}
